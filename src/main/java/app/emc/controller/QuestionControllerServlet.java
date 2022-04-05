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




}
