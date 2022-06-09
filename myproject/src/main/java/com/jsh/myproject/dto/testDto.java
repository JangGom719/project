package com.jsh.myproject.dto;

public class testDto {

	private String id;
	private String name;
	private String birth;
	private String phone;
	private String address;
	private String day;
	public testDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public testDto(String id, String name, String birth, String phone, String address, String day) {
		super();
		this.id = id;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.address = address;
		this.day = day;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
	
}
