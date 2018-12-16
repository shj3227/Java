package com.ex.test;

public class signUpDTO {
	private String id;
	private String pw;
	private String name; 
	private String nickname;
	private String email;
	private String phonenum;
	private String zipcode;
	private String address;
	private int grade;
	


	
	public signUpDTO() {
		super();
	}

	
	
	public signUpDTO(String id, String pw, String name, 
			String nickname,String email,String phonenum, String zipcode, String address,int grade )
	{
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.email= email;
		this.phonenum = phonenum;
		this.zipcode = zipcode;
		this.address = address;
		this.grade = grade;
		
		
	}
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhonenum() {
		return phonenum;
	}


	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	
	public String getZipcode() {
		return zipcode;
	}



	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}



	public int getGrade() {
		return grade;
	}



	public void setGrade(int grade) {
		this.grade = grade;
	}

	
}
