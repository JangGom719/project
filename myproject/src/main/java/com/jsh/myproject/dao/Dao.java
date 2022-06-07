package com.jsh.myproject.dao;

import java.util.ArrayList;

import com.jsh.myproject.dto.classDto;
import com.jsh.myproject.dto.infoDto;
import com.jsh.myproject.dto.memberDto;
import com.jsh.myproject.dto.myscoreDto;
import com.jsh.myproject.dto.scoreDto;
import com.jsh.myproject.dto.selectDto;

public interface Dao {

	//학생
	
	public void joinDao(String id,String pw,String name,String birth,String gender, String phone , String depart);
	//member 테이블에 정보 추가
	public void joinDao2(String id);
	//info 테이블에 null 정보 추가
	
	public memberDto loginOkDao(String id);
	//학생 로그인
	
	public int checkIdDao(String id);
	public int checkIdDao2(String id);
	public int checkPwDao(String id, String pw);
	//학생 로그인 체크
	
	public int searchIdDao(String name, String phone);
	public int searchPwDao(String id, String phone);
	//아이디 찾기
	
	public memberDto searchIdOkDao(String name, String phone);
	public memberDto searchPwOkDao(String id, String phone);
	//학생 아이디, 비밀번호 찾기

	public infoDto infoDao(String id);
	public void infoOkDao(String china, String english, String home, String email, String bank, String account, String depositor, String nation, String id);
	//학생 info
	
	public ArrayList<myscoreDto> scoreDao(String id);
	public ArrayList<myscoreDto> scoreDao2(String id);
	public ArrayList<myscoreDto> scoreDao3(String id);
	//점수 조회 / 년도별 학기별
	
	public ArrayList<scoreDto> scoreinfoDao(String id, int year , String semester);
	//점수 조회 / 자세히
	
	
	public ArrayList<selectDto> selectDao(String id);
	//신청한 수강 리스트
	
	public Integer sumscoreDao(String id);
	//신청 수강 학점
	
	public ArrayList<classDto> classDao2(String id, String classline, int num, String classification);
	//신청 할 수 있는 수강 리스트
	
	public void applicationDao(String id, String code);
	public void applicationDao2(String code);
	//수강 신청 Dao

	
	public void applicationCancleDao(String id, String code);
	public void applicationCancleDao2(String code);
	public void applicationCancleDao3(String id, String code);
	//수강 취소 Dao
	
	
	

	

	
	// 교수 
	
	public memberDto loginPOkDao(String id);
	//교수 로그인
	
	public int checkPIdDao(String id);
	public int checkPPwDao(String id, String pw);
	//교수 로그인 체크
	
	public ArrayList<classDto> lessonDao(String id);
	//진행중인 수업 리스트
	
	public ArrayList<infoDto> selectclassDao(String code);
	public ArrayList<memberDto> selectclassDao2(String code);
	//수강을 듣는 학생의 정보 리스트
	
	public int checkscoreDao(String id, String code);
	//성적을 입력 할지 수정 할 지 체크
	
	public scoreDto getscoreDao(String id, String code);
	//성적 수정을 위해 이미 입력된 성적을 불러옴
	
	
	
	public void setscoreOkDao(String classname, int score, double grade , int year , String semester, String code , String id, String professor , String pid , int appscore);
	//성적 입력
	
	public classDto classDao(String code);
	//수업에 대한 정보 받아오기
	
	public void updatescoreOkDao(int score, double grade , String id, String code, String professor);
	//성적 수정
	
}
