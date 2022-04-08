package app.emc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import app.emc.model.Admin;

public class AdminDAO {
	
	private DataSource dataSource;

	public AdminDAO(DataSource thedataSource) {
		dataSource = thedataSource;
		
	}
	
public Admin getAdminLoginInfo(String username) throws Exception {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try
		{
			conn = dataSource.getConnection();
			
			String query = "select * from admin where username= ?";
			
			//prepare statement
			stmt = conn.prepareStatement(query);
			
			stmt.setString(1,username);
			//executing sql statement
		     rs = stmt.executeQuery();
			
			
			if(rs.next()) {
				Admin admin = new Admin();
				admin.setAdminId(rs.getInt("admin_id"));
				admin.setUsername(rs.getString("username"));
				admin.setPassword(rs.getString("password"));
				admin.setSalt(rs.getString("salt"));
				
				return admin;
			}
			
				return null;
		    	
			}
				
		finally{
			
			rs.close();
			stmt.close();
			conn.close();
			
		}
			
	    	
	    	
			
			
			
		
	}

}
