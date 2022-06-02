package com.jsh.myproject.dto;

public class selectDto {

	private int num;
	private String classline;
	private String code;
	private String classname;
	private int score;
	private String professor;
	private String id;
	private String pid;
	private int year;
	private String semester;
	private String classification;
	
	
	public selectDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public selectDto(int num, String classline, String code, String classname, int score, String professor, String id,
			String pid, int year, String semester) {
		super();
		this.num = num;
		this.classline = classline;
		this.code = code;
		this.classname = classname;
		this.score = score;
		this.professor = professor;
		this.id = id;
		this.pid = pid;
		this.year = year;
		this.semester = semester;
		this.classification = classification;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getClassline() {
		return classline;
	}

	public void setClassline(String classline) {
		this.classline = classline;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
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