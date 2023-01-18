package co.kr.ezen_project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangMemVO;
import co.kr.ezen_project.vo.SangpumVO;

@Controller
@RequestMapping("/sangpum/")
public class SangpumController {
	@Autowired
	SangpumService sangpumService;
	@Autowired
	SangMemService sangmemService;
	
	@RequestMapping({"/category","/category_best","/category_new","/category_lowprice","/category_highprice"})
	public void category(String SangCode,String ordy, Model model) {	//분류페이지로 이동
		SangCode = SangCode + "%";
		SangpumVO Svo = null;
		Svo.setOrby(ordy);
		Svo.setSangCode(SangCode);
		model.addAttribute("list", sangpumService.getSangCate(Svo));
	}
	@RequestMapping("/order")
	public void order(SangCodeSpecVO vo, Model model) {		//결제페이지로 이동
		model.addAttribute("SangCodeSpecVO", vo);
	}
	@RequestMapping("/sangpum")
	public void sangpum(String SangCode, Model model) {		//상품페이지로 이동
		model.addAttribute("SangpumInfo", sangpumService.getSang(SangCode));
		model.addAttribute("SangCodeSpecVO", sangpumService.getColor(SangCode));
		System.out.println(SangCode);
		System.out.println(sangpumService.getSang(SangCode));
	}
	@RequestMapping("/sangpum_Info")
	public void sangpum_Info() {	//상품 상세정보
		
	}
	@RequestMapping("/sangpum_QnA")
	public void sangpum_QnA() {		//상품 QnA						
		
	}
	@RequestMapping("/sangpum_review")
	public void sangpum_review() {	//상품 리뷰
		
	}
	@RequestMapping("/search")
	public void search() {			//검색창 보류
		
	}
	
	@SuppressWarnings("null")
	@RequestMapping("/sangmemInsertProc")		//장바구니에 추가
	public String sangmemInsert(SangCodeSpecVO SCSvo, int sangCnt, Model model, HttpSession session) {
		if(		session.getAttribute("memId") == null		) {	//아이디가 없을때
			session.setAttribute(null, session);
		}else {													//아이디가 있을때
			SangMemVO SMvo = null;
			SMvo.setSangCode(SCSvo.getSangCode());
			SMvo.setSangColor(SCSvo.getSangColor());
			SMvo.setSangSize(SCSvo.getSangSize());
			SMvo.setSangCnt(sangCnt);
			SMvo.setMemId((String)session.getAttribute("memId"));
			sangmemService.addSangMemCart(SMvo);
		}
		return "/sangpum/sangpum";
	}
}
