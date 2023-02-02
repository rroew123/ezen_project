package co.kr.ezen_project.controller;

import java.sql.Array;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.GenderSoldVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.PayAdminVO;
import co.kr.ezen_project.vo.PaymentVO;
import co.kr.ezen_project.vo.QnAboardVO;
import co.kr.ezen_project.vo.SangMemVO;
import co.kr.ezen_project.vo.SangpumVO;
import co.kr.ezen_project.vo.VisitorVO;
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
	
	@Inject
	SangMemService sangmemService;
	 
	
	
	@RequestMapping("/admin")
	public void adminSangOrder(Model model) {
		model.addAttribute("sangpumlist", sangpumService.getSangOrder());
		
		List<QnAboardVO> list = consumerService.getQnAAns();
		model.addAttribute("qnalist", list);
	}

	
	@RequestMapping({"/bottom","/top"})
	public void signUpGood() {
		
	} 
	
	@RequestMapping("/adminMember")
	public void adminMember(Model model) {
		String memCate = "memId";
		model.addAttribute("list", memberService.getMemAdmin(memCate));
	
	}

	@RequestMapping("/adminMemsearchProc")
	public ModelAndView searchAll(@RequestParam(defaultValue="memName") String searchOption,
									@RequestParam(defaultValue="") String keyword) {
		List<MemberVO> list = memberService.searchAll(searchOption, keyword);
		
		int count = memberService.countArticle(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(list);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.addObject("list", list);
		mav.setViewName("/admin/adminMember");
		return mav;
	}
	
	@RequestMapping("/adminMemView")
	public void adminMemView(String memId, Model model) {
		model.addAttribute("dto", memberService.getMemOne(memId));
		MemberVO vo = new MemberVO();
		vo.getGender();
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
	
	@RequestMapping("/adminSangsearchProc")
	public ModelAndView searchSangAll(@RequestParam(defaultValue="sangCode") String searchOption,
									@RequestParam(defaultValue="") String keyword) {
		List<SangpumVO> list = sangpumService.searchAll(searchOption, keyword);
		
		int count = sangpumService.countArticle(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(list);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("count", count);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		mav.addObject("list", list);
		mav.setViewName("/admin/adminSang");
		return mav;
	}
	
	@RequestMapping("/adminSangAdd")
	public void adminSangAdd() {
	}
	
	@RequestMapping("/adminSangInsertProc")
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
	
	@RequestMapping(value="adminNtcInsertProc", method=RequestMethod.POST)
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
	
	@RequestMapping(value="adminNtcUpdateProc", method=RequestMethod.POST)
	public String adminUpdate(@ModelAttribute NtcBoardVO vo){
		consumerService.udtNtc(vo);
		return "redirect:/admin/adminNotice";
	}
	
	@RequestMapping(value="adminNtcDeleteProc")
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
	
	@RequestMapping(value="adminQnAUpdateProc", method=RequestMethod.POST)
	public String adminQnAUpdate(@ModelAttribute QnAboardVO vo){
		System.out.println(vo);
		consumerService.udtQnA_Ans(vo);
		return "redirect:/admin/adminQnA";
	}
	
	@RequestMapping("/adminFAQ")
	public ModelAndView adminFAQ() throws Exception{
		List<FAQVO> list = consumerService.getFAQAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminFAQ");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="adminFAQAdd", method=RequestMethod.GET)
	public void adminFAQAdd() {
	}
	
	@RequestMapping(value="adminFAQInsertProc", method=RequestMethod.POST)
	public String adminFAQInsert(@ModelAttribute FAQVO vo){
		consumerService.addFAQ(vo);
		return "redirect:/admin/adminFAQ";
	}
	
	@RequestMapping(value="adminFAQViewProc", method=RequestMethod.GET)
	public ModelAndView FAQView(@RequestParam int faqNum){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminFAQView");
		mav.addObject("dto", consumerService.getFAQOne(faqNum));
		return mav;
	}
	
	@RequestMapping(value="adminFAQUpdateProc", method=RequestMethod.POST)
	public String adminFAQUpdate(@ModelAttribute FAQVO vo){
		consumerService.udtFAQ(vo);
		return "redirect:/admin/adminFAQ";
	}
	
	@RequestMapping(value="adminFAQDeleteProc")
	public String adminFAQDelete(@RequestParam int faqNum) {
		consumerService.delFAQ(faqNum);
		return "redirect:/admin/adminFAQ";
	}
		
	@RequestMapping("/adminFinance")
	public void adminFinance(Locale locale, Model model) {
		
	}
	
	@RequestMapping(value="/adminVisitorProc", method=RequestMethod.GET)
	@ResponseBody
	public String adminVisitorProc(Locale locale, Model model) {
		Gson gson = new Gson();
		List<VisitorVO> list = consumerService.getVisitor();
		return gson.toJson(list);
	}
	
	@GetMapping(value="/adminOrderStatProc")
	@ResponseBody
	public String adminOrderStatProc(Locale locale, Model model) {
		Gson gson = new Gson();
		List<GenderSoldVO> list = sangmemService.getSangGender();
		
		return gson.toJson(list);
		
	}
	
	@GetMapping(value="/adminOrderDateProc")
	@ResponseBody
	public String adminOrderDateProc(Model model){
		Gson gson = new Gson();
		List<SangMemVO> list = sangmemService.getOrderDate();
		
		return gson.toJson(list);
		
	}
	
	@GetMapping(value="/adminPayProc")
	@ResponseBody
	public String adminPayProc(Model model){
		Gson gson = new Gson();
		List<PayAdminVO> list = sangmemService.getPayAdmin();
		
		return gson.toJson(list);
		
	}
	
	@GetMapping(value="/adminRevenueProc")
	@ResponseBody
	public String adminRevenueProc(Model model){
		Gson gson = new Gson();
		List<PaymentVO> list = sangmemService.getRevenue();
		
		return gson.toJson(list);
		
	}
	
	
	
	
}