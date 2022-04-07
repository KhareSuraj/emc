package app.emc.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		try {
			if(role.equals("candidate")) {
				doCandidateLogin(request,response,username,password);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	private void doCandidateLogin(HttpServletRequest request, HttpServletResponse response, String username,String password) throws Exception {
		
		Candidate cLoginInfo = candidateDao.getCandidateLoginInfo(username);
		
			
			String hpassword = cLoginInfo.getPassword();
			String salt = cLoginInfo.getSalt();
			
			if(AuthUtils.checkPassword(hpassword, password, salt)){
				System.out.println("Login Success");
			}else {
				System.out.println("Login Failed");
			}
			
			
		}
		  
		

		
	}

	


