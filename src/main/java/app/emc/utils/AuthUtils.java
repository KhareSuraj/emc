package app.emc.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;

public class AuthUtils {
	
	public static String getPasswordHashed(String password,String salt) {
		String hashedPassword = "";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte[] saltBytes = Base64.getDecoder().decode(salt);
			md.update(saltBytes);
			byte[] bytes = md.digest(password.getBytes());
			
			hashedPassword = Base64.getEncoder().encodeToString(bytes);
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return hashedPassword;
	}
	
	public static String getSalt() {
		String salt = "";
		SecureRandom rd = new SecureRandom();
		byte[] saltByte = new byte [16];
		rd.nextBytes(saltByte);
		salt = Base64.getEncoder().encodeToString(saltByte);
		return salt;
		
	}
	
	public static boolean checkPassword(String hashedPassword,String password,String salt) {
		
		if(hashedPassword.equals(getPasswordHashed(password,salt))) {
			return true;
		}
		return false;
	}
	
		
	

}
