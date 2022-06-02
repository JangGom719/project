package com.jsh.myproject.Controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jsh.myproject.dao.Dao;
import com.jsh.myproject.dto.classDto;
import com.jsh.myproject.dto.infoDto;
import com.jsh.myproject.dto.memberDto;

@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/index")
	public String index(HttpServletRequest request) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		HttpSession session = request.getSession();	
		
		if(session.getAttribute("degree")!=null) {
			
			return "Phome";
			//교수로 로그인 할 경우
			
		} else if(session.getAttribute("id")!=null) {
			
			return "home";
			//학생으로 로그인 할 경우
		}
		
		else 	
			return "index";
			//그 외
		
	}
	
	@RequestMapping(value="/join")
	public String join() {
		return "join";
	}
	
	//학생
	
	@RequestMapping(value="/joinOk", method = RequestMethod.POST)
	public String joinOk(HttpServletRequest request,  Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		
		int checkId = dao.checkIdDao(request.getParameter("id"));
		int checkId2 = dao.checkIdDao2(request.getParameter("id"));
		
		model.addAttribute("checkId",checkId);
		model.addAttribute("checkId2",checkId);
		
		if(checkId != 1 && checkId2 != 1) {
			
			//중복된 아이디가 없다면
			dao.joinDao(request.getParameter("id"),request.getParameter("pw") , request.getParameter("name"), request.getParameter("birth"), request.getParameter("gender"), request.getParameter("phone"), request.getParameter("depart"));
			dao.joinDao2(request.getParameter("id"));
			session.setAttribute("id", request.getParameter("id"));
			session.setAttribute("name", request.getParameter("name"));
			
		} 
		

		return "joinOk";
	}
	
	
	@RequestMapping(value="/login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping(value="/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping(value="/home")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(value="/Phome")
	public String Phome() {
		
		return "Phome";
	}
	
	
	@RequestMapping(value="/loginOk" , method = RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		int checkId = dao.checkIdDao(request.getParameter("id"));
		int checkPw = dao.checkPwDao(request.getParameter("id"), request.getParameter("pw"));
		
		model.addAttribute("checkId",checkId);
		model.addAttribute("checkPw",checkPw);
		
		if(checkPw == 1) {
			//아이디와 비밀번호가 일치하는 정보가 있다면
			
			
			memberDto dto = dao.loginOkDao(request.getParameter("id"));
			HttpSession session = request.getSession();

			session.setAttribute("id", dto.getId());
			session.setAttribute("name", dto.getName());
			
			
			//세션에 아이디와 이름을 올림
			
		
			model.addAttribute("id",dto.getId());
			model.addAttribute("name",dto.getName());
		
			//모델에 실어서 정보를 loginOk.jsp로 보냄
			// ${mid} 의 형태로 사용 가능
		}
		
		
		return "loginOk";
	}
	
	
	@RequestMapping(value="/searchId")
	public String searchId() {
		return "searchId";
	}
	
	
	@RequestMapping(value="/searchIdOk", method = RequestMethod.POST)
	public String searchIdOk(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		int searchId = dao.searchIdDao(request.getParameter("name"), request.getParameter("phone"));

		model.addAttribute("searchId", searchId);
		
		if(searchId == 1) {
			
			//일치하는 이름과 전화번호가 있다면
			
			memberDto dto = dao.searchIdOkDao(request.getParameter("name"), request.getParameter("phone"));
			

			model.addAttribute("id",dto.getId());
			model.addAttribute("pw", dto.getName());
			
			// ${mid} 의 형태로 사용 가능	
	
		}
		return "searchIdOk";
	}
	
	
	
	@RequestMapping(value="/searchPw")
	public String searchPw() {
		return "searchPw";
	}
	

	@RequestMapping(value="/searchPwOk", method = RequestMethod.POST)
	public String searchPwOk(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		int searchPw = dao.searchPwDao(request.getParameter("id"), request.getParameter("phone"));

		model.addAttribute("searchPw", searchPw);
		
		if(searchPw == 1) {
			
			//일치하는 아이디와 전화번호가 있다면
			
			memberDto dto = dao.searchPwOkDao(request.getParameter("id"), request.getParameter("phone"));
			
			HttpSession session = request.getSession();
	
			//session.setAttribute("pw", dto.getPw());
			//session.setAttribute("name",dto.getName());
			//세션에 아이디 올림

			model.addAttribute("pw",dto.getPw());
			model.addAttribute("name", dto.getName());
			
			// ${mid} 의 형태로 사용 가능	

			
		}
		return "searchPwOk";
	}
	
	
	@RequestMapping(value="/info")
	public String info(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		infoDto dto = dao.infoDao((String) session.getAttribute("id"));

		
		if(dto.getChina()!= null) {
			session.setAttribute("china",dto.getChina());
		}
		
		if(dto.getEnglish()!=null) {
			session.setAttribute("english",dto.getEnglish());
		}
		
		if(dto.getHome() !=null) {
			session.setAttribute("home",dto.getHome());
		}
		
		if(dto.getEmail() !=null) {
			session.setAttribute("email",dto.getEmail());
		}
		
		if(dto.getBank()!=null) {
			session.setAttribute("bank",dto.getBank());
		}
		
		if(dto.getAccount()!=null) {
			session.setAttribute("account",dto.getAccount());
		}
		
		if(dto.getDepositor()!=null) {
			session.setAttribute("depositor",dto.getDepositor());
		}
		
		if(dto.getNation()!=null) {
			session.setAttribute("nation",dto.getNation());
		}
		
		session.setAttribute("professor",dto.getProfessor());
		session.setAttribute("year",dto.getYear());
		
		
		return "info";
	}
	
	
	
	@RequestMapping (value="/infoOk")
	public String infoOk(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		
		dao.infoOkDao(request.getParameter("china") , request.getParameter("english"), request.getParameter("home"), request.getParameter("email"), request.getParameter("bank"), request.getParameter("account"), request.getParameter("depositor"), request.getParameter("nation"), (String)session.getAttribute("id"));
	
		
		return "infoOk";
	}
	
	
	@RequestMapping(value="/score")
	public String score(HttpServletRequest request, Model model) {
		
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		
		model.addAttribute("score" , dao.scoreDao((String)session.getAttribute("id")));
		model.addAttribute("score2", dao.scoreDao2((String)session.getAttribute("id")));
		model.addAttribute("score3", dao.scoreDao3((String)session.getAttribute("id")));
		
		return "score";
	}
	
	
	@RequestMapping(value="/scoreinfo")
	public String scoreinfo(HttpServletRequest request, Model model) {
		
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		
		model.addAttribute("score" , dao.scoreinfoDao((String)session.getAttribute("id"),  Integer.parseInt(request.getParameter("year")), request.getParameter("semester")));
		
		
		
		return "scoreinfo";
	}
	
	
	
	@RequestMapping(value="/array")
	public String array(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		
		if(session.getAttribute("classline")!=null) {
			
			model.addAttribute("application", dao.classDao2((String)session.getAttribute("id"), (String) session.getAttribute("classline"), Integer.parseInt( (String)session.getAttribute("num") ), (String)session.getAttribute("classification")));
		}
		
		
		int sum =  dao.sumscoreDao((String)session.getAttribute("id"));
		
		model.addAttribute("selectclass", dao.selectDao((String)session.getAttribute("id")));
		model.addAttribute("sum", sum);
		
		
		return "array";
	}
	
	
	@RequestMapping(value="/arrayOk")
	public String arrayOk(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		HttpSession session = request.getSession();		
		
		
		
		session.setAttribute("classline",request.getParameter("classline"));
		session.setAttribute("num",request.getParameter("num"));
		session.setAttribute("classification",request.getParameter("classification"));

		
		
		return "redirect:array";
	}
	
	@RequestMapping(value="/applicationOk")
	public String applicationOk(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		HttpSession session = request.getSession();		
		
		dao.applicationDao((String)session.getAttribute("id"), request.getParameter("code"));
		dao.applicationDao2(request.getParameter("code"));
		
		return "redirect:array";
	}
	
	
	
	@RequestMapping(value="/applicationCancle")
	public String applicationCancle(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		HttpSession session = request.getSession();		
		
		
		dao.applicationCancleDao((String)session.getAttribute("id"), request.getParameter("code"));
		dao.applicationCancleDao2(request.getParameter("code"));
		dao.applicationCancleDao3((String)session.getAttribute("id"), request.getParameter("code"));
		
		return "redirect:array";
	}
	
	
	
	//교수
	
	@RequestMapping(value="/loginP")
	public String loginP() {
		return "loginP";
	}
	
	
	@RequestMapping(value="/loginPOk" , method = RequestMethod.POST)
	public String loginPOk(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		int checkId = dao.checkPIdDao(request.getParameter("id"));
		int checkPw = dao.checkPPwDao(request.getParameter("id"), request.getParameter("pw"));
		
		model.addAttribute("checkId",checkId);
		model.addAttribute("checkPw",checkPw);
		
		if(checkPw == 1) {
			
			//아이디 , 비밀번호 체크
			
			
			memberDto dto = dao.loginPOkDao(request.getParameter("id"));
			HttpSession session = request.getSession();

			session.setAttribute("id", dto.getId());
			session.setAttribute("name", dto.getName());
			session.setAttribute("degree", dto.getDegree());
		
		}
		
		return "loginPOk";
	}

	
	
	
	@RequestMapping(value="/Pinfo")
	public String Pinfo(HttpServletRequest request, Model model) {
		
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();
		infoDto dto = dao.infoDao((String) session.getAttribute("id"));

		
		if(dto.getChina()!= null) {
			session.setAttribute("china",dto.getChina());
		}
		
		if(dto.getEnglish()!=null) {
			session.setAttribute("english",dto.getEnglish());
		}
		
		if(dto.getHome() !=null) {
			session.setAttribute("home",dto.getHome());
		}
		
		if(dto.getEmail() !=null) {
			session.setAttribute("email",dto.getEmail());
		}
		
		if(dto.getBank()!=null) {
			session.setAttribute("bank",dto.getBank());
		}
		
		if(dto.getAccount()!=null) {
			session.setAttribute("account",dto.getAccount());
		}
		
		if(dto.getDepositor()!=null) {
			session.setAttribute("depositor",dto.getDepositor());
		}
		
		if(dto.getNation()!=null) {
			session.setAttribute("nation",dto.getNation());
		}
		
		return "Pinfo";
	}

	
	@RequestMapping(value="/lesson")
	public String lesson(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		
		model.addAttribute("lesson", dao.lessonDao((String)session.getAttribute("id")));
		
		
		return "lesson";
	}
	
	@RequestMapping(value="/lessoninfo")
	public String lessoninfo(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		session.setAttribute("code", request.getParameter("code"));
		model.addAttribute("student", dao.selectclassDao(request.getParameter("code")));
		model.addAttribute("student2", dao.selectclassDao2(request.getParameter("code")));
		
		
		return "lessoninfo";
	}
	
	@RequestMapping(value="/setscore")
	public String setscore(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		int check = dao.checkscoreDao(request.getParameter("studentid"), (String)session.getAttribute("code"));
		
		model.addAttribute("check",check);
		model.addAttribute("dto", dao.classDao((String)session.getAttribute("code")));
		model.addAttribute("studentid", request.getParameter("studentid"));
		
		return "setscore";
	}
	
	
	@RequestMapping(value="/setscoreOk", method = RequestMethod.POST)
	public String setscoreOk(HttpServletRequest request) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();	
		
		dao.setscoreOkDao(request.getParameter("classname"),Integer.parseInt(request.getParameter("score")) , Double.parseDouble(request.getParameter("grade")), Integer.parseInt(request.getParameter("year")), request.getParameter("semester"), request.getParameter("code"), request.getParameter("studentid"), (String)session.getAttribute("name"));
		
	
		return "setscoreOk";
	}
	
	
	
	@RequestMapping(value="/updatescore")
	public String updatescore(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		int check = dao.checkscoreDao(request.getParameter("studentid"), (String)session.getAttribute("code"));

		model.addAttribute("check",check);
		
		if(check == 1) {
			
			model.addAttribute("dto",dao.getscoreDao(request.getParameter("studentid"),(String)session.getAttribute("code")));
			
		}
		
		return "updatescore";
	}
	
	
	@RequestMapping(value="/updatescoreOk")
	public String updatescoreOk(HttpServletRequest request, Model model) {
		
		Dao dao = sqlSession.getMapper(Dao.class);
		
		HttpSession session = request.getSession();		
		
		
		dao.updatescoreOkDao(Integer.parseInt(request.getParameter("score")), Double.parseDouble(request.getParameter("grade")), request.getParameter("studentid"), (String)session.getAttribute("code"), (String)session.getAttribute("name"));
		
		
		return "updatescoreOk";
	}
	
	
	
	
	
}
