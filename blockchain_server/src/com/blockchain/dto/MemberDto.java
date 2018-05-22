package com.blockchain.dto;

public class MemberDto {
	String id;
	String password;
	String name;
	String major;
	int grade;
	String phone;
	
	
	public MemberDto(String id, String password, String name, String major, int grade, String phone) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.major = major;
		this.grade = grade;
		this.phone = phone;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
