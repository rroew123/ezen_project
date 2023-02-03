package co.kr.ezen_project.controller;

import java.util.ArrayList;
import java.util.List;

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
import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.NtcBoardVO;
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

	@RequestMapping({ "customerFAQ", "mypage_memUpdate", "mypage_memDelete", "mypage_recentlyView", "mypage_orderHis",
			"mypage_wishlist", "customerFAQ" })
	public void webmovepost() { // findId, findPw, memberJoin 페이지가 오류 => 원인 불명
	}

	@RequestMapping({ "/findID", "/findPW", "/login" })
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
	}

	// 회원가입 post
	@RequestMapping(value = "/joinformProc")
	public String postRegister(MemberVO vo) throws Exception {

		MemService.addMem(vo);

		return "/member/login";
	}

	@RequestMapping("/findIDProc")
	public String findIdProc(String email, Model model) {
		String searchmemId = MemService.findId(email);
		model.addAttribute("findId", searchmemId);
		return "/member/findID";
	}

	@RequestMapping(value = "/findPWProc", method = RequestMethod.POST)
	public String findPwd(MemberVO vo, Model model) {
		MemberVO memPwd = MemService.findPwd(vo);
		vo.setMemId("memId");
		vo.setEmail("email");
		vo.setMemName("memName");
		vo.setPhone("phone");
		model.addAttribute("member", memPwd);

		return "/member/findPW";
	}

	@RequestMapping(value = "/myPage_deleteProc", method = RequestMethod.GET)
	public String delete(String memId, HttpSession session) {
		session.invalidate();
		MemService.delMem(memId);

		return "redirect:/";
	}

	@RequestMapping(value = "/mypage_UpdateProc", method = RequestMethod.POST)
	public String myPage_UpdateProc(MemberVO vo) {
		MemService.udtMem(vo);
		return "/member/mypage_memUpdate";
	}

	@RequestMapping("/mypage")
	public void mypage(HttpSession session, Model model) {
		MemberVO vo = (MemberVO) session.getAttribute("userInfo");

		String memid = vo.getMemId();
		model.addAttribute("His", sangService.getSM_MemId(memid));

	}

	@RequestMapping("/mypage_board")
	public void mypage_board(HttpSession session, Model model) {
		model.addAttribute("row", conService.getQnA_Mem((MemberVO) session.getAttribute("userInfo")));
	}

	@RequestMapping("/customer")
	public void customer(int faqCate, Model model) {
		model.addAttribute("sub", conService.getFAQ_faqCate(faqCate));
		model.addAttribute("faqlist", conService.getFAQAll());
		model.addAttribute("faqCate", faqCate);
		model.addAttribute("ntc", conService.getNtcAll());
	}

	@RequestMapping("/faqCntxt")
	public void faqCntxt(int faqNum, Model model) {
		model.addAttribute("txt", conService.getFAQOne(faqNum));
	}

	@RequestMapping("/ntcCntxt")
	public void ntcCntxt(int ntcNum, Model model) {
		model.addAttribute("txt", conService.getNtcOne(ntcNum));
	}

	@RequestMapping("/shoppingcart")
	public void shoppingcart(Model model, String memId) {
		model.addAttribute("shop", sangService.getSangMemAll());
		model.addAttribute("shop", sangService.getSM_MemId(memId));
	}

	@RequestMapping("/cartDelProc")
	public String cartDelProc(String[] orderNum ,String memId) {
	
		SangMemVO vo = new SangMemVO();
		for (String i : orderNum) {
			vo.setOrderNum(i);
			sangService.delSangMem(vo);
		}
		return "redirect:/member/shoppingcart?memId=" + memId;
	}

	@RequestMapping("/paypage")
	public void paypage(String[] orderNum, Model model, SangMemVO vo) {
		List<SangMemVO> list = new ArrayList<SangMemVO>();
		if(orderNum != null) {
			for (String orderN : orderNum) {
				list.add(sangService.getSangMem(orderN));
			}
		}
		if(vo.getSangSize() != 0) {
			list.add(vo);
		}
		model.addAttribute("orderNumlist", orderNum);
		model.addAttribute("pay", list);
	}

	

}