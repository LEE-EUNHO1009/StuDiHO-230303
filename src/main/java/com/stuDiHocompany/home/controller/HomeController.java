package com.stuDiHocompany.home.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stuDiHocompany.home.dao.IDao;
import com.stuDiHocompany.home.dto.MemberDto;

@Controller
public class HomeController {
   @Autowired
   private SqlSession sqlSession;
	   
	@RequestMapping(value ="/")
	public String home() {
		return "main";
	}
	@RequestMapping(value = "/main")
	public String index() {
		return "main";
	}
	
	@RequestMapping(value = "/company")
	public String company() {
		return "company";
	}
	
	@RequestMapping(value = "/reservation")
	public String reservation() {
		return "reservation";
	}
	
	@RequestMapping(value = "/idpic")
	public String idpic() {
		return "idpic";
	}
	//@RequestMapping(value = "/idpic.do", method = RequestMethod.GET)
	//public String idpic(HttpServletRequest request, ResDto resDto) {
		
	//	Calender cal= Calender.getInstance();
	//	ResDto idpicResDto; //dto
		
	//	public Map<String, Integer>today_info(ResDto resDto){
	//	Map<String, Integer>today_Data = new HaspMap<String, Integer>();
	//	Calender cal= Calender.getInstance();
	//	cal.set(Integer.parseInt(dateDate.getYear()),Integer.parseInt(ResDto.getMonth()),1);
	//	}
	//	
	//	
	//	return "idpic";
	//}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	
	@RequestMapping(value = "/gallery")
	public String gallery() {
		return "gallery";
	}
	
	@RequestMapping(value = "/gallery2")
	public String gallery2() {
		return "gallery2";
	}
	
	@RequestMapping(value = "/gallery3")
	public String gallery3() {
		return "gallery3";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag =  dao.checkId(mid);
		//로그인하려는 아이디 존재시 1, 로그인하려는 아이디가 존재하지 않으면 0이 반환
		int checkIdPwFlag = dao.checkIdAndPW(mid, mpw);
		//로그인하려는 아이디와 비밀번호가 모두 일치하는 데이터가 존재하면 1 아니면 0이 반환		
		
		model.addAttribute("checkIdFlag", checkIdFlag);		
		model.addAttribute("checkIdPwFlag", checkIdPwFlag);
		
		if(checkIdPwFlag == 1) { //로그인 실행 
			
			session.setAttribute("memberId", mid);
			MemberDto memberDto = dao.getMemberInfo(mid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("mid", mid);
		}
		
		
		return "loginOk";
	}	
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login";
	}
	
	@RequestMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, HttpSession session, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int joinFlag = dao.memberJoin(mid, mpw, mname, memail);
		//joinFlag가 1이면 회원가입 성공, 아니면 실패
		//System.out.println("가입성공여부:"+joinFlag);
		
		//가입하려는 아이디가 존재하는지 여부를 체크하는 메서드 삽입 예정
		
		if(joinFlag == 1) {//회원가입 성공시 바로 로그인 진행
			session.setAttribute("memberId", mid);
			session.setAttribute("memberName", mname);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
			
			return "joinOk";
		} else { //회원가입 실패
			return "joinFail";
		}	
		
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/question")
	public String question() {
		return "question";
	}

	//@RequestMapping(value = "/memberModify")
	//public String memberModify() {
	//	return "memberModify";
	//}

	//@RequestMapping(value = "/memberModifyOk")
	//public String memberModifyOk() {
	//	return "memberModifyOk";
	//}
	
	//@RequestMapping(value = "/questionModify")
	//public String questionModify() {
	//	return "questionModify";
	//}

	//@RequestMapping(value = "/questionView")
	//public String questionView() {
	//	return "questionView";
	//}
}
