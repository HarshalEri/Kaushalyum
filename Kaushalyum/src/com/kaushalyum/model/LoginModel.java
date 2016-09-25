package com.kaushalyum.model;



public class LoginModel {
	
	private String email;
	private String password;
	public LoginModel() {
		this(null, null);
	}
	public LoginModel(String emailId, String password) {
		this.email = emailId;
		this.password = password;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return String.format("LoginModel [username=%s, password=%s]", email, password);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
