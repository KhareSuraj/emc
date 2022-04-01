package app.emc.util;



import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import jakarta.annotation.Resource;


public class DBUtil {
	
	private static Connection conn = null;
	
	@Resource(name="jdbc/emc")
	
	private static DataSource dataSource;
	
	public static Connection getConnection() {
		
		try {
			conn = dataSource.getConnection();
			
		}catch(SQLException exc){
			exc.printStackTrace();
			
		}
		
		return conn;
	}
	

}

