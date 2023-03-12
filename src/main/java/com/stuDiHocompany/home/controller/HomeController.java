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
import com.stuDiHocompany.home.dto.QBoardDto;

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
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
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
	
	@RequestMapping(value = "/login") // 로그인 클릭하면
	public String login() {
	
		return "login"; // login.jsp로 이동
	}
	
	@RequestMapping(value = "/logout") // 로그아웃 클릭하면
	public String logout() {
	
		return "login"; // login.jsp로 이동
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
	
	@RequestMapping(value = "/history") // 예약 내역
	public String history(HttpServletRequest request, Model model) {	
		
		/*HttpSession session = request.getSession();
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
	
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto",memberDto);
	
		model.addAttribute("count",dao.countList(sessionId));
		model.addAttribute("list", dao.listDao(sessionId)); // 전체리스트
		
		model.addAttribute("count01",dao.count01List(sessionId));
		model.addAttribute("list01", dao.list01Dao(sessionId)); // 증명사진 예약 리스트
		
		model.addAttribute("count02",dao.count02List(sessionId));
		model.addAttribute("list02", dao.list02Dao(sessionId)); // 프로필/컨셉사진 예약 리스트
		
		model.addAttribute("count03",dao.count03List(sessionId));
		model.addAttribute("list03", dao.list03Dao(sessionId)); // 반려동물 사진 예약 리스트
		*/
		return "history";
	}
	
	@RequestMapping(value = "/company")
	public String company() {
		return "company";
	}
	
	@RequestMapping(value = "/reservation") // 회원 예약하기 페이지로 이동
	public String reservation(HttpServletRequest request, Model model) {
		
		/*HttpSession session = request.getSession();
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
	
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto",memberDto);*/
		
		return "reservation";
	}
	
	@RequestMapping(value = "/resWrite")  // 회원 예약 글쓰기 화면에서 예약하기 버튼 눌렀을 때 memberwrite 실행 후 예약내역 리스트 페이지로 이동
	public String resWrite(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		
		// DB에서 예약일자 가져와서
		// for(i=0;i>count;i++) {
		// db의 rdayof와 request.getParameter("rdayof")를 비교해서 같으면
		// 입력하신 날짜는 이미 예약 중입니다. 뜨고
		// 다르면 입력
		
		dao.writeDao(request.getParameter("rid"), request.getParameter("rname"),request.getParameter("rclass"), request.getParameter("rdayof"), request.getParameter("rtime"),request.getParameter("rcontent"), request.getParameter("rstatus"));
		
		return "redirect:history";
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

	@RequestMapping(value = "/question")
	public String question(HttpSession session, Model model) {
		
		String sessionId = (String) session.getAttribute("memberId");
		
		if(sessionId == null) {//로그인 상태 확인
			model.addAttribute("memberId", "GUEST");
		} else {
			model.addAttribute("memberId", sessionId);
		}
		
		return "question";
		

	}
	
	@RequestMapping(value = "/questionOk")
	public String questionOk(HttpServletRequest request) {
		
		String qid = request.getParameter("qid");//글쓴유저 아이디
		String qname = request.getParameter("qname");//글쓴유저 이름
		String qcontent = request.getParameter("qcontent");//글쓴 질문 내용
		String qemail = request.getParameter("qemail");//글쓴유저 이메일
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeQuestion(qid, qname, qcontent, qemail);
		
		return "redirect:list";
	}

	@RequestMapping(value = "/questionView")
	public String questionView(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		QBoardDto qBoardDto = dao.questionView(qnum);
		
		model.addAttribute("qdto", qBoardDto);
		model.addAttribute("qid", qBoardDto.getQid());//글쓴 유저의 id값 전송
		
		return "questionView";
	}

	@RequestMapping(value = "/questionModify")
	public String questionModify(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		QBoardDto qBoardDto = dao.questionView(qnum);
		
		model.addAttribute("qdto", qBoardDto);
		
		
		return "questionModify";
	}

	public String questionModifyOk(HttpServletRequest request) {
		
		String qnum = request.getParameter("qnum");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.questionModify(qnum, qname, qcontent, qemail);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/questionDelete")
	public String questionDelete(HttpServletRequest request) {
		
		String qnum= request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.questionDelete(qnum);
		
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
		
		List<QBoardDto> qboardDtos = dao.questionList(cri);
		
		model.addAttribute("pageMaker", pageDto);
		model.addAttribute("qdtos", qboardDtos);
		model.addAttribute("currPage", pageNumInt);
		
		return "questionList";
	}	
	
	@RequestMapping(value = "/memberModify")
	public String memberModify() {
		return "memberModify";
	}

	@RequestMapping(value = "/memberModifyOk")
	public String memberModifyOk() {
		return "memberModifyOk";
	}

	
}
