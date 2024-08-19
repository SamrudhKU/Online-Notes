package com.User;

public class UserDetails {
	private int id;
	private String name;
	private String email;
	private String password;
	private String phoneNumber;
	
	public UserDetails() {
		super();
	}
	
	
	
	public UserDetails(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}



	public UserDetails(String name, String email, String password, String phoneNumber) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	
}
