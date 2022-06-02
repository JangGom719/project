package com.jsh.myproject.dto;

public class myscoreDto {

	private int year;
	private String semester;
	private int appscore;
	private int getscore;
	private int sumscore;
	private double sumgrade;
	private double avgscore;
	private double avggrade;
	public myscoreDto(int year, String semester, int appscore, int getscore, int sumscore, double sumgrade,
			double avgscore, double avggrade) {
		super();
		this.year = year;
		this.semester = semester;
		this.appscore = appscore;
		this.getscore = getscore;
		this.sumscore = sumscore;
		this.sumgrade = sumgrade;
		this.avgscore = avgscore;
		this.avggrade = avggrade;
	}
	public myscoreDto() {
		super();
		// TODO Auto-generated constructor stub
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
	public int getAppscore() {
		return appscore;
	}
	public void setAppscore(int appscore) {
		this.appscore = appscore;
	}
	public int getGetscore() {
		return getscore;
	}
	public void setGetscore(int getscore) {
		this.getscore = getscore;
	}
	public int getSumscore() {
		return sumscore;
	}
	public void setSumscore(int sumscore) {
		this.sumscore = sumscore;
	}
	public double getSumgrade() {
		return sumgrade;
	}
	public void setSumgrade(double sumgrade) {
		this.sumgrade = sumgrade;
	}
	public double getAvgscore() {
		return avgscore;
	}
	public void setAvgscore(double avgscore) {
		this.avgscore = avgscore;
	}
	public double getAvggrade() {
		return avggrade;
	}
	public void setAvggrade(double avggrade) {
		this.avggrade = avggrade;
	}
	
	
	
}
