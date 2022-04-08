package app.emc.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import javax.sql.DataSource;

import app.emc.DAO.CandidateDAO;
import app.emc.model.Candidate;
import app.emc.utils.AuthUtils;

/**
 * Servlet implementation class UserLoginControllerServlet
 */
public class UserLoginControllerServlet extends HttpServlet {
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
	
	



	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect(request.getContextPath());
		
	}





	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		//Get username , password and role from the user login form.
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		try {
			if(role.equals("candidate")) {
				authenciateCandidate(request,response,username,password);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	private void authenciateCandidate(HttpServletRequest request, HttpServletResponse response, String username,String password) throws Exception {
		
			Candidate cLoginInfo = candidateDao.getCandidateLoginInfo(username);
			HttpSession session = request.getSession();
			
			if(cLoginInfo != null) {
				
				String salt = cLoginInfo.getSalt();
				String hpassword = cLoginInfo.getPassword();
				int candidateId = cLoginInfo.getCandidateId();
				
				if(AuthUtils.checkPassword(hpassword,password, salt)){
					session.setAttribute("candidateId",candidateId );
					response.getWriter().println("Login Success");
					
				} else {
					
					session.setAttribute("err", "Wrong username or password");
					response.sendRedirect(request.getContextPath());
					
				}	
				
			}else {
				
				session.setAttribute("err", "Wrong username or password");
				response.sendRedirect(request.getContextPath());
				
				
			}
			
			
		
			
			
		}
		  
		

		
	}

	


