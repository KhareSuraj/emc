package app.emc.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import app.emc.DAO.CandidateDAO;
import app.emc.DAO.QuestionDAO;
import app.emc.model.Question;

/**
 * Servlet implementation class AnswerControllerServlet
 */
public class AnswerControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private QuestionDAO questionDao;
    
    @Resource(name="jdbc/emc")
	private DataSource dataSource;
       
    @Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			questionDao = new QuestionDAO(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShowQuestionForm(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	
	private void ShowQuestionForm(HttpServletRequest request, HttpServletResponse response) {
			
		//Get questions from DAO
				List<Question> questions;
				try {
					questions = questionDao.getQuestions();
					
					request.setAttribute("QUESTIONS_LIST", questions);

					//Send to JSP Page (View)

					RequestDispatcher dispatcher = request.getRequestDispatcher("/users/questionform.jsp");
					dispatcher.forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

							
		}

}
