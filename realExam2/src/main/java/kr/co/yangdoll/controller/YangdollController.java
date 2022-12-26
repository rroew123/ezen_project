package kr.co.yangdoll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/yangdoll/"})
public class YangdollController {
	
	@RequestMapping({"/","/qqqq/", "/wwww/", "/eeee/", "/rrrr/"} )
	public String qwer() {
		//중간에 처리할 내용 => 없음
		//or 
		//db목록을 aaa.jsp에게 보내줌
		return "/yangdoll/aaa";
	}
	
	@RequestMapping({"/tttt", "/zzz", "/xxx"} )
	public void tttt() {
		//중간에 처리할 내용 => 없음
		//or 
		//db목록을 aaa.jsp에게 보내줌
	}
	
	/*
	 * @RequestMapping() public String zzz() { //중간에 처리할 내용 => 없음 //or //db목록을
	 * aaa.jsp에게 보내줌 return "/yangdoll/zzz"; }
	 * 
	 * @RequestMapping( ) public String xxx() { //중간에 처리할 내용 => 없음 //or //db목록을
	 * aaa.jsp에게 보내줌 return "/yangdoll/xxx"; }
	 */
	
}
