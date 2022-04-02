package app.emc.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import app.emc.model.Candidate;

public class CandidateDAO {

	private DataSource dataSource;

	public CandidateDAO(DataSource thedataSource) {
		dataSource = thedataSource;
		
	}

	public List<Candidate> getCandidates() throws Exception {

		List<Candidate> candidates = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//Connect to DataSource
			conn = dataSource.getConnection();
			//SQL Query

			String query = "select * from candidates order by candidate_id desc";

		    stmt = conn.createStatement();
		    rs = stmt.executeQuery(query);
		    //Retrieve data from result set row
		    while(rs.next()) {
		    	int candidateId = rs.getInt("candidate_id");
		    	String firstname = rs.getString("firstname");
		    	String surname = rs.getString("surname");
		    	String party = rs.getString("party");
		    	int age = rs.getInt("age");
		    	String profession = rs.getString("profession");

		    	//Create new candidate object
		    	Candidate nCandidate = new Candidate(candidateId,surname,firstname,party,profession,age);

		    	//Add to list
		    	candidates.add(nCandidate);

		    }
		    return candidates;
		}finally {
			rs.close();
			stmt.close();
			conn.close();
			
		}

	}

	public List<Candidate> getfirstname() {
		// TODO Auto-generated method stub
		return null;
	}
	

}

