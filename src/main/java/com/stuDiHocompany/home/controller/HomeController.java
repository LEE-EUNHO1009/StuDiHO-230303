package com.stuDiHocompany.home.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.stuDiHocompany.home.dto.ResDto;

//import javax.util.Calendar;

@Controller
public class HomeController {

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
	
	@RequestMapping(value = "/idpic.do", method = RequestMethod.GET)
	public String idpic(HttpServletRequest request, ResDto resDto) {
		
		Calender cal= Calender.getInstance();
		ResDto idpicResDto; //dto
		
		public Map<String, Integer>today_info(ResDto resDto){
			
		}
		
		
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
