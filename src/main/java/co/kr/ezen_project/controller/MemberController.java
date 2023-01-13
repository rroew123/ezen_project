package co.kr.ezen_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.kr.ezen_project.service.MemberService;

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
	
	
	@RequestMapping("findIdProc")
	public String findIdProc(String email) {
		String searchmemId = MemService.findId(email);
		System.out.println("alert(searchmemId)");
		return "/member/findId";
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