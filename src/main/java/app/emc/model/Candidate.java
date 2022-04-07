package app.emc.model;

public class Candidate {
	
	private int candidateId;
	private String surname;
	private String firstname;
	private String party;
	private String profession;
	private int age;
	private String username;
	private String password;
	private String salt;
	
	
	



	public Candidate(int candidateId, String surname, String firstname, String party, String profession, int age,
			String username, String password) {
		
		this.candidateId = candidateId;
		this.surname = surname;
		this.firstname = firstname;
		this.party = party;
		this.profession = profession;
		this.age = age;
		this.username = username;
		this.password = password;
	}
	
	

	public Candidate(int candidateId, String surname, String firstname, String party, String profession, int age) {
		this.candidateId = candidateId;
		this.surname = surname;
		this.firstname = firstname;
		this.party = party;
		this.profession = profession;
		this.age = age;
	}



	public Candidate(String surname, String firstname, String party, String profession, int age, String username,
			String password,String salt) {
		super();
		this.surname = surname;
		this.firstname = firstname;
		this.party = party;
		this.profession = profession;
		this.age = age;
		this.username = username;
		this.password = password;
		this.salt = salt;
	}



	public Candidate(String password, String salt) {
		
		this.password = password;
		this.salt = salt;
	}



	public int getCandidateId() {
		return candidateId;
	}
	public void setCandidateId(int candidateId) {
		this.candidateId = candidateId;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	
	
}
