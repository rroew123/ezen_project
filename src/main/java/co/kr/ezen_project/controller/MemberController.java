package co.kr.ezen_project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.QnAboardVO;
import co.kr.ezen_project.vo.SangMemVO;

@Controller
@RequestMapping("/member/")
public class MemberController {
	@Autowired
	MemberService MemService;
	@Autowired
	SangMemService sangService;
	@Autowired
	ConsumerService conService;

	@RequestMapping({ "/customer", "/mypage_memDelete", "mypage_memUpdate", "mypage_recentlyView", "mypage_orderHis",
			"mypage_wishlist" })
	public void webmovepost() { // findId, findPw, memberJoin 페이지가 오류 => 원인 불명
	}

	@RequestMapping({ "/findID", "/findPW", "/login", "/shoppingcart" })
	public void webmoveget() { // findId, findPw, memberJoin 페이지가 오류 => 원인 불명
	}

	@RequestMapping(value = "/loginProc.do") // "/myPage"}
	public String loginProc(MemberVO member, HttpSession session, RedirectAttributes rttr) {
		MemberVO vo = MemService.loginCheck(member);

		if (vo == null) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/login";
		}
		session.setAttribute("userInfo", vo);

		return "redirect:/";
	}

	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 회원가입 get
	@RequestMapping(value = "/memberjoin", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		System.out.println("get register");
	}

	// 회원가입 post
	@RequestMapping(value = "/joinformProc")
	public String postRegister(MemberVO vo) throws Exception {
		System.out.println(vo);

		MemService.addMem(vo);

		return "/member/login";
	}

	@RequestMapping("/findIDProc")
	public String findIdProc(String email, Model model) {
		System.out.println(email);
		String searchmemId = MemService.findId(email);
		System.out.println(searchmemId);
		model.addAttribute("userInfo", searchmemId);
		System.out.println("작동확인");
		return "/member/findID";
	}

	@RequestMapping(value = "/findPWProc", method = RequestMethod.POST)
	public String idFind(@RequestParam(required = true, value = "memId") String memId,
			@RequestParam(required = true, value = "email") String email, MemberVO member, Model model) {

		member.setMemName(memId);
		member.setEmail(email);
		String memPwd = MemService.findPwd(member);
		System.out.println(memPwd);
		model.addAttribute("member", memPwd);

		return "/member/findPW";
	}

	@RequestMapping(value = "/myPage_deleteProc", method = RequestMethod.GET)
	public String myPage_deleteProc(String memId) {
		MemService.delMem(memId);
		System.out.println("==============");

		return "redirect:/";
	}

	@RequestMapping(value = "/myPage_UpdateProc", method = RequestMethod.POST)
	public String myPage_UpdateProc(MemberVO vo, HttpSession session) {
		MemService.udtMem(vo);
		System.out.println("=1=1=1==1=1==1=1");
		session.setAttribute("MyUpdate", vo);
		System.out.println("==============");
		return "/member/mypage";
	}
	
/*	@RequestMapping("/mypage")
	public void mypage(HttpSession session, Model model) {
		System.out.println("=============first");
		System.out.println((MemberVO)session.getAttribute("userInfo"));
		MemberVO vo = (MemberVO)session.getAttribute("userInfo");
		System.out.println(sangService.getSM_Mem(vo));
		System.out.println(sangService.getSM_MemId(vo.getMemId()));
		model.addAttribute("His", sangService.getSM_MemId(vo.getMemId()));
	}
	*/
	
	@RequestMapping("/mypage")
	public void mypage(HttpSession session,Model model) {
		MemberVO vo = (MemberVO) session.getAttribute("userInfo");
	System.out.println(session.getAttribute("userInfo"));
	System.out.println(vo);
	System.out.println(vo.getMemId());
	String memid = vo.getMemId();
	System.out.println(memid);
	System.out.println(sangService.getSM_MemId(memid));
	model.addAttribute("His", sangService.getSM_MemId(memid));
	
	}
	
@RequestMapping("/mypage_board")
	public void mypage_board(HttpSession session, Model model) {
	model.addAttribute("row", conService.getQnA_Mem((MemberVO)session.getAttribute("userInfo")));
	}
	
	
	
	
	

	/*
	 * mypage 연결 마이페이지
	 * 
	 * customer 연결 고객센터
	 * 
	 * mypage_board 연결 마이페이지 내게시글
	 * 
	 * mypage_memDelete연결 마이페이지 회원탈퇴
	 * 
	 * mypage_memUpdate연결 마이페이지 회원정보수정
	 * 
	 * mypage_orderHis연결 마이페이지 마이페이지 주문내역
	 * 
	 * mypage_recentlyView연결 마이페이지 최근본상품
	 * 
	 * mypage_wishlist연결 마이페이지 관심상품
	 * 
	 * ntcBoard연결 공지사항
	 * 
	 */

}