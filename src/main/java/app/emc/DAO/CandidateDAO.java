package app.emc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.processing.Completion;
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

	public void insertCandidate(Candidate theCandidate) throws Exception {
		Connection conn=null;
		PreparedStatement stmt=null;
		
		try {
			//get db connection
			conn=dataSource.getConnection();
		//Create Sql for insert
		String sql="insert into candidates"+"(surname, firstname, party, profession, age, username, password)"+"values(?, ?, ?, ?, ?, ?, ?)";
		stmt=conn.prepareStatement(sql);
				//set the param value for the candidate
		
		stmt.setString(1,theCandidate.getSurname());
		stmt.setString(2,theCandidate.getFirstname());
		stmt.setString(3,theCandidate.getParty());
		stmt.setString(4,theCandidate.getProfession());
		stmt.setInt(5,theCandidate.getAge());
		stmt.setString(6,theCandidate.getUsername());
		stmt.setString(7,theCandidate.getPassword());
		//execute sql insert
		stmt.execute();
		}
		finally {
		   stmt.close();
		   conn.close();
		}
		
	}
	

}

