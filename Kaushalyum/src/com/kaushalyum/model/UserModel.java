package com.kaushalyum.model;

import java.math.BigInteger;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

@Component
public class UserModel {

	@NotEmpty(message ="first name could not be empty")
	private String firstName;
	
	@NotEmpty(message ="last name could not be empty")
	private String lastName;
	
	@NotEmpty(message ="Password could not be empty")
	@Length(min=8, max=18, message = "Password should contain at leat 8 characters")
	private String password;
	
	@NotEmpty
	@Length(min=4, max=8)
	private String cpassword;
	
	@Email(message="enter valid email address")
	@NotEmpty(message="Email can not be empty")
	private String email;
	
	@NotEmpty(message = "Address can not be empty")
	@Length(min=4, max=30)
	private String address;
	
	@NotNull(message = "Enter Contact Number")
	private BigInteger contactno;
	
	@Range(min=1, max=99)
	private int age;
	
	public UserModel() {
		this(null,null,null,null,null,null,null,0);
	}
	
	
	public UserModel(String firstName, String lastName,String password,String cpassword, String email, String address,
			BigInteger contactno, int age) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.cpassword = cpassword;
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


	public String getCpassword() {
		return cpassword;
	}


	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	
	
}
