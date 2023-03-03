package com.stuDiHocompany.home.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
