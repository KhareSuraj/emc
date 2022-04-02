package app.emc.DAO;

import java.sql.Connection;
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
			conn.close();
			stmt.close();
			rs.close();
		}

	}
	

}
