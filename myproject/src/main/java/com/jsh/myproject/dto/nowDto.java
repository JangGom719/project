package com.jsh.myproject.dto;

public class nowDto {

	private int year;
	private String semester;
	
	
	
	public nowDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public nowDto(int year, String semester) {
		super();
		this.year = year;
		this.semester = semester;
	}



	public int getYear() {
		return year;
	}



	public void setYear(int year) {
		this.year = year;
	}



	public String getSemester() {
		return semester;
	}



	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	
	
}
