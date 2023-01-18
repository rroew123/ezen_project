package co.kr.ezen_project.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.SangpumVO;
import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Inject 
	MemberService memberService;
	
	@Inject
	SangpumService sangpumService;
	
	 
	
	
	@RequestMapping(path = "/admin")
	public void signUp() {
	} 
	
	@RequestMapping({"/adminQnA","/adminFinance","/adminNotice","/bottom","/top"})
	public void signUpGood() {
		
	} 
	
	@RequestMapping("/adminMember")
	public void adminMember(Model model) {
		String memCate = "memId";
		model.addAttribute("list", memberService.getMemAdmin(memCate));
		
	}
	
	@RequestMapping("/adminMemView")
	public void adminMemView(String memId, Model model) {
		model.addAttribute("dto", memberService.getMemOne(memId));
		logger.info("클릭한 아이디: " + memId);
	}
	
	@RequestMapping("/adminMemUpdateProc")
	public String adminMemUpdate(@ModelAttribute MemberVO vo) {
		memberService.udtMemAdmin(vo);
		return "redirect:/admin/adminMember";
	}
	
	@RequestMapping("/adminMemDeleteProc")
	public String adminMemDelete(@ModelAttribute MemberVO vo) {
		String memId = vo.getMemId();
		memberService.delMem(memId);
		return "redirect:/admin/adminMember";
	}
	
	@RequestMapping("/adminSang")
	public void adminSang(Model model) {
		model.addAttribute("list", sangpumService.getSangAll());
	}
	
	@RequestMapping("/adminSangAdd")
	public void adminSangAdd() {
	}
	
	@RequestMapping("/adminInsertProc")
	public String SangpumInsert(@ModelAttribute SangpumVO vo) {
		sangpumService.addSang(vo);
		
		return"redirect:/admin/adminSang";
	}
	
	@RequestMapping("/adminSangView")
	public void adminSangView(String sangCode, Model model) {
		model.addAttribute("dto", sangpumService.getSang(sangCode));
		logger.info("클릭한 상품코드: " + sangCode);
	}
	
	@RequestMapping("/adminSangUpdateProc")
	public String adminSangUpdate(@ModelAttribute SangpumVO vo) {
		sangpumService.updSang(vo);
		return "redirect:/admin/adminSang";
	}
	
	@RequestMapping("/adminSangDeleteProc")
	public String adminSangDelete(@ModelAttribute SangpumVO vo) {
		String sangCode = vo.getSangCode();
		sangpumService.delSang(sangCode);
		return "redirect:/admin/adminSang";
	}
	
	
	

}