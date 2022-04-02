package app.emc.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;
import app.emc.DAO.CandidateDAO;
import app.emc.model.Candidate;
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
			listCandidates(request,response);
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}



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

