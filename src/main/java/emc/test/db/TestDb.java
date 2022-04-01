package emc.test.db;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import app.emc.util.DBUtil;

/**
 * Servlet implementation class TestDb
 */
public class TestDb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//Define datasource/connection pool for Resource Injection
	private Connection conn;
	
	public TestDb() {
		conn = DBUtil.getConnection();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//step 1: Set up the printwriter
				PrintWriter out = response.getWriter();
				response.setContentType("text/plain");
				
				
				Statement myStmt = null;
				ResultSet myRs = null;
				try {
					//Create a sql statement
					String sql = "Select * from questions";
					myStmt= conn.createStatement();
					//step 4 Execute SQL query
					myRs= myStmt.executeQuery(sql);
					//step 5 Process the result set 
					while (myRs.next()) {
						String question = myRs.getString("question");
						out.println(question);
					}
					//result
					
					
				}catch(Exception exc) {
					exc.printStackTrace();
				}
		

	}	

}
