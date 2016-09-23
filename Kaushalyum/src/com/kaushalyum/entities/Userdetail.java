package com.kaushalyum.entities;



import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;


/**
 * The persistent class for the userdetails database table.
 * 
 */
@Entity
@Table(name="userdetails")
@NamedQuery(name="Userdetail.findAll", query="SELECT u FROM Userdetail u")
public class Userdetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String email;

	@Lob
	private String address;

	private int age;

	private BigInteger contactno;

	private String firstName;

	private String lastName;

	private String password;

	private String userName;

	public Userdetail() {
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public BigInteger getContactno() {
		return this.contactno;
	}

	public void setContactno(BigInteger contactno) {
		this.contactno = contactno;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}