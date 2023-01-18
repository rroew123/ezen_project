package co.kr.ezen_project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;
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
	
	@Inject
	ConsumerService consumerService;
	 
	
	
	@RequestMapping(path = "/admin")
	public void admin() {
	} 
	
	@RequestMapping({"/adminFinance","/bottom","/top","/adminFAQ"})
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
	
	@RequestMapping("/adminNotice")
	public ModelAndView adminNotice() throws Exception{
		List<NtcBoardVO> list = consumerService.getNtcAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminNotice");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="adminNtcAdd", method=RequestMethod.GET)
	public void adminNtcAdd() {
	}
	
	@RequestMapping(value="adminInsertProc", method=RequestMethod.POST)
	public String adminInsert(@ModelAttribute NtcBoardVO vo){
		consumerService.addNtc(vo);
		return "redirect:/admin/adminNotice";
	}
	
	@RequestMapping(value="adminNtcViewProc", method=RequestMethod.GET)
	public ModelAndView ntcView(@RequestParam int ntcNum, HttpSession session) throws Exception {
		consumerService.increaseViewCnt(ntcNum, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminNtcView");
		mav.addObject("dto", consumerService.getNtcOne(ntcNum));
		return mav;
	}
	
	@RequestMapping(value="adminUpdateProc", method=RequestMethod.POST)
	public String adminUpdate(@ModelAttribute NtcBoardVO vo){
		consumerService.udtNtc(vo);
		return "redirect:/admin/adminNotice";
	}
	
	@RequestMapping(value="adminDeleteProc")
	public String adminDelete(@RequestParam int ntcNum) {
		consumerService.delNtc(ntcNum);
		return "redirect:/admin/adminNotice";
	}
	
	@RequestMapping("/adminQnA")
	public ModelAndView adminQnA() throws Exception{
		List<QnAboardVO> list = consumerService.getQnAAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminQnA");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="adminQnAViewProc", method=RequestMethod.GET)
	public ModelAndView qnaView(int qnaNum){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminQnAView");
		mav.addObject("dto", consumerService.getQnAOne(qnaNum));
		return mav;
	}
	
	@RequestMapping(value="adminQnADeleteProc")
	public String adminQnADelete(@RequestParam int qnaNum){
		consumerService.delQnA(qnaNum);
		return "redirect:/admin/adminQnA";
	}
	
}