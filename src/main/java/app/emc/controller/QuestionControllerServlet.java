package app.emc.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import app.emc.DAO.QuestionDAO;
import app.emc.model.Question;
import app.emc.util.DBUtil;
import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QuestionControllerServlet
 */
public class QuestionControllerServlet extends HttpServlet {
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			//read the question,command parameter
			String theCommand = request.getParameter("command");
			//if command is null
			if(theCommand == null){
				theCommand = "LIST";
			}
			//route to the appropriate method
			switch (theCommand) {
			case "LIST":
				listQuestions(request, response);
				break;
			case "ADD":
				addQuestion(request,response);
				break;
				
			default:
				listQuestions(request,response);
			}
			
			//list the questions
			listQuestions(request,response);
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}



	}

	private void addQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String question = request.getParameter("question");
		
		Question nQuestion = new Question(question);
		
		questionDao.insertQuestion(nQuestion);
		
		listQuestions(request,response);
		
	}

	private void listQuestions(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		//Get questions from DAO
		List<Question> questions = questionDao.getQuestions();

		//Add Question to the request
		request.setAttribute("QUESTIONS_LIST", questions);

		//Send to JSP Page (View)

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/questions/list.jsp");
		dispatcher.forward(request, response);

	}



}
