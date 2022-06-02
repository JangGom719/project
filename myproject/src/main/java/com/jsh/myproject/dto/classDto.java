package com.jsh.myproject.dto;

public class classDto {

	private int num;
	private String classline;
	private String code;
	private String classname;
	private int score;
	private String professor;
	private int appnum;
	private int maxnum;
	private String pid;
	private String classification;
	private int year;
	private String semester;
	
	public classDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public classDto(int num, String classline, String code, String classname, int score, String professor, int appnum,
			int maxnum, String pid, String classification, int year, String semester) {
		super();
		this.num = num;
		this.classline = classline;
		this.code = code;
		this.classname = classname;
		this.score = score;
		this.professor = professor;
		this.appnum = appnum;
		this.maxnum = maxnum;
		this.pid = pid;
		this.classification = classification;
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
	public int getAppnum() {
		return appnum;
	}
	public void setAppnum(int appnum) {
		this.appnum = appnum;
	}
	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	

	
	
}
