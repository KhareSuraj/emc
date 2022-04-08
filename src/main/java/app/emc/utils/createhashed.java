package app.emc.utils;

public class createhashed {
	
	static String password = "admin";
	static String salt = AuthUtils.getSalt();
	static String hashedpwd = AuthUtils.getPasswordHashed(password, salt);
	
	

	public static void main(String[] args) {
		
			System.out.println(salt);
			System.out.println(hashedpwd);
			
	}

}
