package co.kr.ezen_project.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.vo.MemberVO;

@Controller
@RequestMapping("/member/")
public class MemberController {
	@Autowired
	MemberService MemService;
	
	
	@RequestMapping({"/customer", "/mypage", "/ntcBoard"}) 
	public void webmovepost() { 	//findId, findPw, memberJoin 페이지가 오류 => 원인 불명
	}
	
	@RequestMapping({"/findID", "/findPW", "/login", "/memberjoin", "/shoppingcart", "/ntcBoard"}) 
	public void webmoveget() { 	//findId, findPw, memberJoin 페이지가 오류 => 원인 불명
	}
	/*
	@RequestMapping("loginProc")
	public String loginProc(@ModelAttribute MemberVO vo, HttpSession session) {
		MemberVO result = MemService.loginCheck(vo);
		ModelAndView mav = new ModelAndView();
		if ( result != null) { // 로그인 성공
			mav.setViewName("home");
			mav.addObject("msg","success");
		}else { // 로그인 실패
			mav.setViewName("login");
			mav.addObject("msg","failure");
		}
		return "mav";
	}
	*/
	@PostMapping(value = "/loginProc.do")//"/myPage"}
	   public String loginProc(MemberVO member ,HttpSession session,RedirectAttributes rttr) { 
	      MemberVO vo= MemService.loginCheck(member);
	       
	      if(vo == null) {  
	          rttr.addFlashAttribute("msg", false);
	          return "redirect:/member/login";
	      }
	         session.setAttribute("userInfo", vo);  
	         
	      return "home";
	   }
	
//	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
//	public String logout(HttpSession session, HttpServletResponse response) throws Exception{
//		session.invalidate();
//		session.removeAttribute("member");
//		MemService.로그아웃(response);
//		return "redirect:home";
//	}
	
	@RequestMapping(value= "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/";
	}
	
	/*
	 * @RequestMapping("/home") public String home(HttpSession session) { return
	 * "/home"; }
	 */
	
	
	@RequestMapping("/findIDProc")
	public String findIdProc(String email) {
		System.out.println(email);
		String searchmemId = MemService.findId(email);
		System.out.println(searchmemId); 
		System.out.println("alert(searchmemId)");
		
		return "/member/findID";
	}
	
	
	
	/* mypage 연결	마이페이지

	 * customer 연결	고객센터
	 * 
	 * mypage_board 연결	마이페이지 내게시글
	 * 
	 * mypage_memDelete연결	마이페이지 회원탈퇴
	 * 
	 * mypage_memUpdate연결	마이페이지 회원정보수정

	 * mypage_orderHis연결	마이페이지 마이페이지 주문내역
	 * 
	 * mypage_recentlyView연결	마이페이지 최근본상품
	 * 
	 * mypage_wishlist연결	마이페이지 관심상품
	 * 
	 * ntcBoard연결 공지사항
	 * 
	 */
	 

}