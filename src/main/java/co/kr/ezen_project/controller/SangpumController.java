package co.kr.ezen_project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.PaymentVO;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangMemVO;
import co.kr.ezen_project.vo.SangpumVO;
import co.kr.ezen_project.vo.SearchVO;

@Controller
@RequestMapping("/sangpum/")
public class SangpumController {
	@Autowired
	SangpumService sangpumService;
	@Autowired
	SangMemService sangmemService;

	@RequestMapping("/payProc") // 장바구니에 추가
	public String payProc(SangCodeSpecVO[] scsvoList, SangMemVO[] smvo, int cost, String memId, Model model) {
		SangpumVO spvo = new SangpumVO();
		PaymentVO payvo = new PaymentVO();
		for (SangCodeSpecVO vo : scsvoList) {
			if (sangpumService.getSCS(vo.getSangCode()).getRemStock() == 0) {
				model.addAttribute("masege", "재고가없습니다");
			} else {
				vo.setRemStock(vo.getRemStock() - 1);
				sangpumService.updSCS(vo);
				spvo = sangpumService.getSang(vo.getSangCode());
				spvo.setRemStock(spvo.getRemStock() - 1);
				spvo.setSoldCnt(spvo.getSoldCnt() + 1);
				sangpumService.updSang(spvo); // 상품코드스펙에서 재고 -1
				sangpumService.updSCS(vo); // 상품에서 재고 -1 그리고 판매량 +1

			}
			;
		}
		payvo.setMemId(memId);
		payvo.setPayment(cost);
		sangmemService.addPayment(payvo);

		payvo.setPayment(0);

		return "/member/paypage";
	}

	@RequestMapping("/category")
	public void category(String sangCode, String orby, Model model) {	//분류페이지로 이동
		SearchVO searchvo = new SearchVO();
		if(orby != null) {						//order by 기본이 판매량 순
			searchvo.setOrby(orby);	
		}else {
			searchvo.setOrby("SOLDCNT desc");
		}
		if( sangCode.length() > 4 ) {					//sangCode 가 5자리 이상일 경우 뒤에 2자리를 자르고 아닌경우 그냥 사용
			sangCode = sangCode.substring( 0 , sangCode.length() - 2);
		}
		searchvo.setKeyword(sangCode);
		model.addAttribute("typeTwo", sangpumService.getSC_cateName(searchvo));
		searchvo.setKeyword(sangCode + "__");
		model.addAttribute("cateList", sangpumService.getSC_cateName(searchvo));
		model.addAttribute("sangCode", sangCode);
		
		System.out.println(sangCode.substring(0, 1));
		System.out.println(sangCode);
		System.out.println(sangCode.substring(1));
		if( sangCode.substring(0, 1).equals("1") ){
			System.out.println("이게 왜안될까");
			sangCode = "_" + sangCode.substring(1);
			
		}
		searchvo.setKeyword(sangCode + "%");
		model.addAttribute("sangList", sangpumService.getSangCate(searchvo));		//상품 코드와 order by로 상품 리스트 들을 검색
		
	}

	@RequestMapping("/order")
	public void order(SangCodeSpecVO vo, Model model) { // 결제페이지로 이동
		model.addAttribute("SangCodeSpecVO", vo);
	}

	@GetMapping("/sangpum")
	public void sangpum(String sangCode, SangCodeSpecVO scsvo, HttpSession session, Model model) { // 상품페이지로 이동
		/*
		 * if(session.getattribute("sangcode") != null) { sangcode = (string)
		 * session.getattribute("sangcode");
		 * scsvo.setsangcolor((integer)session.getattribute("sangcode"));
		 * session.removeattribute("sangcode"); session.removeattribute("sangsize"); }
		 */

		model.addAttribute("sangpumInfo", sangpumService.getSang(sangCode));
		model.addAttribute("sangColorList", sangpumService.getColor(sangCode));
		model.addAttribute("sangSizeList", sangpumService.getSize(scsvo));
		session.setAttribute("sangCode", sangCode);
		session.setAttribute("sangColor", scsvo.getSangColor());
		model.addAttribute("scsvo", scsvo);
	}

	@GetMapping("/selColorProc") // 실패......
	@ResponseBody
	public String selColorProc(String sangCode, int sangColor, HttpSession session) { // 상품페이지로 이동
		SangCodeSpecVO scsvo = null;
		scsvo.setSangCode(sangCode);
		scsvo.setSangColor(sangColor);
		session.setAttribute("sangCode", sangCode);
		session.setAttribute("sangColor", sangColor);

		return "";
	}

	@RequestMapping({ "/sangpum_Info", "/sangpum_QnA", "/sangpum_review" })
	public void sangpum_Info() { // 상품 상세정보

	}

	@RequestMapping("/search")
	public void search(String sangName, Model model) { // 검색창 보류
		model.addAttribute("sangName", sangName);
		SearchVO vo = new SearchVO();
		vo.setKeyword("%" + sangName + "%");
		model.addAttribute("sangListSize", sangpumService.getSP_sangName(vo).size());
		model.addAttribute("sangList", sangpumService.getSP_sangName(vo));
		System.out.println(sangName);
		System.out.println(vo);
		System.out.println(sangpumService.getSP_sangName(vo).size());
		System.out.println(sangpumService.getSP_sangName(vo));
	}

	@RequestMapping("/shoppingcartProc") // 장바구니에 추가
	public String sangmemInsert(SangMemVO SMvo, Model model, HttpSession session) {
		sangmemService.addSangMemCart(SMvo);
		return "redirect:/sangpum/sangpum?sangCode=" + SMvo.getSangCode();
	}

	@RequestMapping("/test") // 홈이라고 생각하자
	public void test(String orby, Model model) {
		SearchVO searchvo = new SearchVO();
		searchvo.setKeyword("_");
		model.addAttribute("mainTypeOne", sangpumService.getSC_cateName(searchvo));
		for (SangCateVO vo1 : sangpumService.getSC_cateName(searchvo)) {
			searchvo.setKeyword(vo1.getSangCode() + "__");
			model.addAttribute("listA" + vo1.getSangCode(), sangpumService.getSC_cateName(searchvo));
			for (SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
				searchvo.setKeyword(vo2.getSangCode() + "__");
				model.addAttribute("listB" + vo2.getSangCode(), sangpumService.getSC_cateName(searchvo));
			}
		}
	}

	/*
	 * @RequestMapping("/getcate") //필요 없어
	 * 
	 * @ResponseBody public String categet(String cateCode, HttpSession session,
	 * Model model) { System.out.println(cateCode); SearchVO searchvo = new
	 * SearchVO(); searchvo.setKeyword(cateCode+"__"); if(cateCode.length() < 3) {
	 * session.setAttribute("typeTwo", sangpumService.getSC_cateName(searchvo));
	 * System.out.println("타입투 되나"); }else { session.setAttribute("typeThree",
	 * sangpumService.getSC_cateName(searchvo)); System.out.println("타입쓰리 되나"); }
	 * 
	 * return ""; }
	 */

}
