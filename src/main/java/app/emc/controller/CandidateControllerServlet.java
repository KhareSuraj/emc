package app.emc.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;
import app.emc.DAO.CandidateDAO;
import app.emc.model.Candidate;
import app.emc.utils.AuthUtils;
import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CandidateControllerServlet
 */
public class CandidateControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private CandidateDAO candidateDao;
    
    @Resource(name="jdbc/emc")
	private DataSource dataSource;

    @Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			candidateDao = new CandidateDAO(dataSource);
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
			//read the "command" parameter
			String theCommand= request.getParameter("command");
			
			
			//if the command is missing, then default to listing candidates
			if (theCommand == null) {
				theCommand="LIST";
				
				
			}
			
			//route the appropriate code
			switch(theCommand) {
			
			case "LIST":
				listCandidates(request,response);
				break;
				
			case "add":
				showForm(request,response);
				break;
				
			case "delete":
				deleteCandidate(request,response);
				break;
				
			default:
				listCandidates(request, response);
			}

		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}



	}
	
	

	private void deleteCandidate(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		//read candidate id
		int Candidate_id = Integer.parseInt(request.getParameter("CandidateId"));
		
		//delete candidate from database
		candidateDao.deleteCandidate(Candidate_id);
		
		//send them back to the candidate list-
		listCandidates (request, response);
		
		
		
	}

	private void showForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/candidates/add.jsp");
			dispatcher.forward(request, response);	
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			addCandidate(request,response);
			
		}catch(Exception exc){
			
			throw new ServletException(exc);
			
		}
	}

	private void addCandidate(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//Read Candidate info form data
		String surname= request.getParameter("surname");
		String firstname= request.getParameter("firstname");
		String party= request.getParameter("party");
		String profession= request.getParameter("profession");
		int age= Integer.parseInt(request.getParameter("age"));
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		
		//Create Salt and Hashed password
		String salt = AuthUtils.getSalt();
		String hashedpwd = AuthUtils.getPasswordHashed(password, salt);
		
		
		//create a new candidate object
		Candidate theCandidate = new Candidate(surname, firstname, party, profession, age, username, hashedpwd,salt);
		
		
		
		//add the candidate to the database
		candidateDao.insertCandidate(theCandidate);
		
		//send back to main page (the candidate list)
		response.sendRedirect("CandidateControllerServlet");
		
		
		
	}
	
	
	
	


	private void listCandidates(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		//Get Candidate from DAO
		List<Candidate> candidates = candidateDao.getCandidates();

		//Add Candidate to the request
		request.setAttribute("CANDIDATES_LIST", candidates);

		//Send to JSP Page (View)

		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/candidates/list.jsp");
		dispatcher.forward(request, response);

	}



}

