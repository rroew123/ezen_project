package kr.co.yangdoll.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yangdoll.service.BoardService;
import kr.co.yangdoll.service.MemberService;
import kr.co.yangdoll.vo.MemberVO;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memservice;
	@Autowired
	private BoardService boaservice;

	@RequestMapping("/memberJoinProc")
	private String addMember(MemberVO vo, HttpSession httpSession) {
		int result = memservice.addMember(vo);
		if (result ==1) {
			httpSession.setAttribute("vo", vo);
		}
		return "home";
	}
	@RequestMapping("/loginFormProc")
	private String loginFormProc(MemberVO vo, Model model, HttpSession httpSession) {
		MemberVO memvo = new MemberVO();
		memvo = memservice.getMember(vo.getMemId());
		if (memvo.getMemPwd().equals(vo.getMemPwd()) ) {
			httpSession.setAttribute("mem", memvo);
			model.addAttribute(boaservice.getBoardList());
		}else {
			return "redirect:/member/loginForm";
		}
		return "home";
	}
	
	@RequestMapping("/logout")
	private String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/";
	}
	/*	
	@RequestMapping("/memUpdate")
	private String updatae(MemberVO vo) {
		
		
		return "/member/memUpdate";
	}
	*/
	@RequestMapping("/memUpdateProc")
	private String updateProc(MemberVO vo, HttpSession httpSession) {
		memservice.updateMem(vo);
		httpSession.removeAttribute("vo");
		httpSession.setAttribute("vo", vo);
		return "home";
	}
	
	@RequestMapping({"/memCheck","/memUpdate", "/loginForm", "/memberJoin"} )  //member/memCheck, //member/memUpdate
	private void webMove() {
		//return "/member/memCheck";
	}
	
	
	
}
