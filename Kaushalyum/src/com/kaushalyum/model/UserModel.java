package com.kaushalyum.model;

import java.math.BigInteger;

public class UserModel {

	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private String email;
	private String address;
	private BigInteger contactno;
	private int age;
	
	public UserModel() {
		this(null,null,null,null,null,null,null,00);
	}
	
	
	public UserModel(String firstName, String lastName, String userName, String password, String email, String address,
			BigInteger contactno, int age) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.address = address;
		this.contactno = contactno;
		this.age = age;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public BigInteger getContactno() {
		return contactno;
	}
	public void setContactno(BigInteger contactno) {
		this.contactno = contactno;
	}
	public  int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
