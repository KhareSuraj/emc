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

import app.emc.DAO.AdminDAO;
import app.emc.DAO.CandidateDAO;
import app.emc.model.Admin;
import app.emc.model.Candidate;
import app.emc.utils.AuthUtils;

/**
 * Servlet implementation class AdminLoginControllerServlet
 */
public class AdminLoginControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private AdminDAO adminDao;
	    
	    @Resource(name="jdbc/emc")
		private DataSource dataSource;

	    @Override
		public void init() throws ServletException {
			super.init();
			
			try {
				adminDao = new AdminDAO(dataSource);
			}
			catch (Exception exc) {
				throw new ServletException(exc);
			}
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			authenciateAdmin(request,response,username,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void authenciateAdmin(HttpServletRequest request, HttpServletResponse response, String username,String password) throws Exception {
		
		Admin admin = adminDao.getAdminLoginInfo(username);
		
		
		if(admin != null) {
			
			String ausername = admin.getUsername();
			String salt = admin.getSalt();
			String hpassword = admin.getPassword();
			int adminId = admin.getAdminId();
			
			if(AuthUtils.checkPassword(hpassword,password, salt)){
				HttpSession session = request.getSession();
				session.setAttribute("LoggedUser",adminId );
				session.setAttribute("username",ausername );
				response.sendRedirect(request.getContextPath()+"/admin/dashboard.jsp");
				
			} else {
				
				
				response.sendRedirect(request.getContextPath()+"/admin/login?error=Wrong username or password");
				
			}	
			
		}else {
			
			
			response.sendRedirect(request.getContextPath()+"/admin/login?error=Wrong username or password");
			
			
		}
		
		
	
		
		
	}

}
