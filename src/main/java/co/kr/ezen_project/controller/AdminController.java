package co.kr.ezen_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path = "/admin/", method = RequestMethod.POST)
public class AdminController {
	

	@RequestMapping(path = "/", method = RequestMethod.POST)
	public void signUp() {
	} 

	@RequestMapping(path = "/member/회원가입동작", method = RequestMethod.POST)
	public String signUpGood() {
		return "redirect:home";
	} 

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
	
	
	
	//타겟 오류 확인용
	
	// 다시 보내기
	



}