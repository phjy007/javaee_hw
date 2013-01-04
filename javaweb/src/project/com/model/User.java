package project.com.model;

public class User {
	private int id, usertype, validated;
	private String username, gender, password;
	
	public User(){}
	public User(int id, int usertype, int validated, String username, String gender, String password) {
		this.id = id;
		this.usertype = usertype;
		this.validated = validated;
		this.username = username;
		this.gender = gender;
		this.password = password;
	}
	
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getUsertype() {
		return this.usertype;
	}
	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}
	
	public int getValidated() {
		return this.validated;
	}
	public void setValidated(int validated) {
		this.validated = validated;
	}
	
	public String getUsername() {
		return this.username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return this.password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getGender() {
		return this.gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}
