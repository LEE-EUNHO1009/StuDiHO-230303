package com.stuDiHocompany.home.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stuDiHocompany.home.dao.IDao;
import com.stuDiHocompany.home.dto.Criteria;
import com.stuDiHocompany.home.dto.MemberDto;
import com.stuDiHocompany.home.dto.PageDto;
import com.stuDiHocompany.home.dto.QuestionDto;

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
	@RequestMapping(value = "/company01")
	public String company01() {
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
	
	@RequestMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	
	@RequestMapping(value = "/gallery")
	public String gallery() {
		return "gallery";
	}
	@RequestMapping(value = "/gallery01")
	public String gallery01() {
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
	@RequestMapping(value = "/login01")
	public String login01() {
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
	@RequestMapping(value = "/question01")
	public String question01() {
		return "question";
	}

	@RequestMapping(value = "/questionOk")
	public String questionOk(HttpServletRequest request) {
		
		String qid = request.getParameter("qid");//글쓴유저 아이디
		String qtitle = request.getParameter("qtitle"); //글 제목
		String qcontent = request.getParameter("qcontent");//글쓴 질문 내용
		
		IDao dao = sqlSession.getMapper(IDao.class);
		System.out.println(qtitle);
		dao.writeQuestion(qid, qtitle, qcontent);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "list")
	public String list(Model model, Criteria cri, HttpServletRequest request) {
		
		int pageNumInt = 0;
		if(request.getParameter("pageNum") == null) {
			pageNumInt = 1;
			cri.setPageNum(pageNumInt);
			
		} else {
			pageNumInt = Integer.parseInt(request.getParameter("pageNum"));
			cri.setPageNum(pageNumInt);
		}
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int totalRecord = dao.boardAllCount();
		
		//cri.setPageNum();
		
		cri.setStartNum(cri.getPageNum()-1 * cri.getAmount());//해당 페이지의 시작번호를 설정
		
		PageDto pageDto = new PageDto(cri, totalRecord);
		
		List<QuestionDto> questionDtos = dao.questionList(cri);
		
		model.addAttribute("pageMaker", pageDto);
		model.addAttribute("qdtos", questionDtos);
		model.addAttribute("currPage", pageNumInt);
		
		return "questionList";
	}
	
	@RequestMapping(value = "/questionView")
	public String questionView(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		QuestionDto questionDto = dao.questionView(qnum);
		
		model.addAttribute("qdto", questionDto);
		model.addAttribute("qid", questionDto.getQid());//글쓴 유저의 id값 전송
		
		return "questionView";
	}
	
	@RequestMapping(value = "/questionModify")
	public String questionModify(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		QuestionDto questionDto = dao.questionView(qnum);
		
		model.addAttribute("qdto", questionDto);
		
		
		return "questionModify";
	}
	
	@RequestMapping(value = "/questionModifyOk")
	public String questionModifyOk(HttpServletRequest request) {
		
		String qid = request.getParameter("qid");
		String qtitle = request.getParameter("qtitle");
		String qcontent = request.getParameter("qcontent");
		String qdate = request.getParameter("qdate");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.questionModify(qid, qtitle, qcontent, qdate);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/questionDelete")
	public String questionDelete(HttpServletRequest request) {
		
		String qnum= request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.questionDelete(qnum);
		
		return "redirect:list";
	}
	
	
}