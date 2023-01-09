package co.kr.ezen_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	

	@RequestMapping(value = "home")
	public void home() {
	}

	@RequestMapping(path = "/member/회원가입", method = RequestMethod.POST)
	public void signUp() {
	} // 회원가입

	@RequestMapping(path = "/member/회원가입", method = RequestMethod.POST)
	public String signUpGood() {
		return "redirect:home";
	} // 회원가입 성공

	@RequestMapping(path = "login", method = RequestMethod.POST)
	public void login() {
	}
	// 로그인

//	@RequestMapping(path = "login", method = RequestMethod.POST) 
//	public String loginTry() { 
//		return vo = dao.멤버넣고 
//				if db안에 아이디가 있으면 redirect:home; 
//				else login;
//	     } // 로그인

	@RequestMapping(path = "/member/mypage_memUpdate/", method = RequestMethod.POST)
	public void memUpdate() {
	} // 아이디/비밀번호 수정
	
	@RequestMapping(path = "/member/mypage/", method = RequestMethod.POST)
	public void mypage() {
	} // 마이페이지
	
	
	



}