package com.jsh.myproject.dto;

public class scoreDto {

	private String classname;
	private int score;
	private double grade;
	private int year;
	private String semester;
	private String code;
	private String id;
	private String professor;
	
	public scoreDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public scoreDto(String classname, int score, double grade, int year, String semester, String code, String id, String professor) {
		super();
		this.classname = classname;
		this.score = score;
		this.grade = grade;
		this.year = year;
		this.semester = semester;
		this.code = code;
		this.id = id;
		this.professor = professor;
	}
	
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
	
}