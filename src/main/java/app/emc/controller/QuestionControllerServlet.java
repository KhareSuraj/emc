package app.emc.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import app.emc.DAO.QuestionDAO;
import app.emc.model.Question;
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
			//Get action parameter from URL.
			String action = request.getParameter("action"); //update
			//action = update;
			
			if (action==null) {
				listQuestions(request,response);
			}
			
			switch(action) {
			
			case "update":
				
				loadQuestion(request,response);
				break;
				
			case "add":
				showForm(request,response);
				
			case "delete":
				deleteQuestion(request, response);
				break;
				
			default:
				listQuestions(request,response);
			
			}			
			
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
		



	}
	


	private void deleteQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//Read questions id  from data
		int question_id = Integer.parseInt(request.getParameter("QuestionId"));
		
		//delete question from database
		questionDao.deleteQuestion(question_id);
		
		//Send them back to the list question page. 
		listQuestions(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				
				String action = request.getParameter("action");
				
				if (action==null) {
					doGet(request,response);
				}
				
				switch(action) {
				
				case "saveupdate":
				updateQuestion(request,response);
				break;
				
				case "insert":
				addQuestion(request,response);
				break;
				
				}
			 
			
			} 
			catch(Exception exc) {
				throw new ServletException(exc);
			}
			
		
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
	
	private void loadQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//Get question id from URL
		int questionId = Integer.parseInt(request.getParameter("id")); //1
		
		//Get question from database (QuestionDAO)
		Question question = questionDao.getQuestionById(questionId);//1
		
		//Set question in request attribute
		
		request.setAttribute("QUESTION", question);
		
		//Send to JSP page: admin/questions/update.jsp
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/questions/update.jsp");
		dispatcher.forward(request, response);
		
		
	}

	private void updateQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int questionId = Integer.parseInt(request.getParameter("id"));
		String question = request.getParameter("question");
		
		Question uQuestion = new Question(questionId,question);
		
		questionDao.updateQuestion(uQuestion);
		
		response.sendRedirect("QuestionControllerServlet");	
		
		
	}
	
	private void addQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String question = request.getParameter("question");

		Question nQuestion = new Question(question);

		questionDao.insertQuestion(nQuestion);

		response.sendRedirect("QuestionControllerServlet");

		}

	private void showForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 
		//Send to JSP add Form Page.
		
				RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/questions/add.jsp");
				dispatcher.forward(request, response);
		
	}
	
	
	
	



}
