package co.kr.ezen_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	

	/*		이후엔 이렇게 해야함
	 * @RequestMapping(path = "/admin", method = RequestMethod.POST) public void
	 * signUp() { }
	 */
	
	@RequestMapping(path = "/admin")
	public void signUp() {
	} 

	@RequestMapping({"/admin_QnA","/adminMem","/adminSan"})
	public void signUpGood() {
		
	} 

	
	
	
	//타겟 오류 확인용
	
	// 다시 보내기
	



}