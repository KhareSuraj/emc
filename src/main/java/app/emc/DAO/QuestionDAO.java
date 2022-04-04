 package app.emc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import app.emc.model.Question;

public class QuestionDAO {

	private DataSource dataSource;

	public QuestionDAO(DataSource thedataSource) {
		dataSource = thedataSource;
		
	}

	public List<Question> getQuestions() throws Exception {

		List<Question> questions = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//Connect to DataSource
			conn = dataSource.getConnection();
			//SQL Query

			String query = "select * from questions order by question_id desc";

		    stmt = conn.createStatement();
		    rs = stmt.executeQuery(query);
		    //Retrieve data from result set row
		    while(rs.next()) {
		    	int questionId = rs.getInt("question_id");
		    	String question = rs.getString("question");

		    	//Create new question object
		    	Question nQuestion = new Question(questionId,question);

		    	//Add to list
		    	questions.add(nQuestion);

		    }
		    return questions;
		}finally {
			
			rs.close();
			stmt.close();
			conn.close();
			
		}

	}
	
	public Question getQuestionById(int questionId) throws Exception {
		
		Question question;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			
			String query ="select * from questions where question_id=?";
			
			stmt = conn.prepareStatement(query);
			
			stmt.setInt(1, questionId); 
			
			rs=stmt.executeQuery();
			
			if(rs.next()) {
				
				String questionData = rs.getString("question");
				
				question = new Question(questionId,questionData);
				
			}else {
				throw new Exception("Could not find question with questionid : "+questionId);
			}
			return question;	
		
		}finally {
			//Close JDBC Objects
			rs.close();
			stmt.close();
			conn.close();
			
		}
		
	}
	
	public void updateQuestion(Question question) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn= dataSource.getConnection();
			
			String query = "update questions set question=? where question_id=?";
			
			stmt = conn.prepareStatement(query);
			
			stmt.setString(1,question.getQuestion());
			stmt.setInt(2, question.getQuestionId());
			
			stmt.execute();
					
		}finally {
			conn.close();
			stmt.close();
		}
	}
	

}
