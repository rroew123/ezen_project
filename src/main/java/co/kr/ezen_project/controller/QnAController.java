package co.kr.ezen_project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.Criteria;
import co.kr.ezen_project.vo.PageMakeVO;
import co.kr.ezen_project.vo.QnAboardVO;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SearchVO;

@Controller
@RequestMapping("/QnA/")
public class QnAController {

	@Inject
	ConsumerService consumerService;
	@Autowired
	SangpumService sangpumService;

	@RequestMapping({ "/QnA_Write", "/QnA_Update", "/QnAPage" })
	public void Board() {

	}

	

	/*
	 * @RequestMapping(value = "/QnABoard") public ModelAndView list(ModelAndView
	 * mav) { mav.setViewName("/QnA/QnABoard"); mav.addObject("list",
	 * consumerService.getQnAAll()); System.out.println(mav); return mav; }
	 */

	@RequestMapping(value = "/WriteProc", method = RequestMethod.POST)
	public String writeProc(QnAboardVO qvo1, HttpSession session, Model model) {
		home_top(model);
		consumerService.addQnA(qvo1);
		session.setAttribute("boardInfo", qvo1);
		return "/QnA/QnA_Write";
	}

	@RequestMapping(value = "/UpdateProc", method = RequestMethod.POST)
	public String UpdateProc(QnAboardVO qvo3, HttpSession session, Model model) {
		home_top(model);
		consumerService.udtQnA(qvo3);
		session.setAttribute("UpdateInfo", qvo3);
		return "/QnA/QnA_Update";
	} 
	@RequestMapping(value = "/QnA_deleteProc", method = RequestMethod.GET)
	public String QnA_deleteProc(int qnaNum, Model model) {
		home_top(model);
		consumerService.delQnA(qnaNum);
		
		return "redirect:QnABoard";
	
	}
	@RequestMapping("/QnABoard")
	public void QnABoard(Model model , Criteria cri) {
		home_top(model);
		model.addAttribute("list", consumerService.getQnAAll());
		model.addAttribute("list", consumerService.getListPaging(cri));
		int total = consumerService.getTotal();
		PageMakeVO pageMake = new PageMakeVO(cri, total);
		model.addAttribute("pageMaker", pageMake);
	}
	
	@RequestMapping(value = "/QnAPage", method = RequestMethod.GET)
	public void QnAPage(int qnaNum, Model model) {
		home_top(model);
		model.addAttribute("qnavo", consumerService.getQnAOne(qnaNum));
	}

	public void home_top(Model model) {
		SearchVO searchvo = new SearchVO();
		searchvo.setKeyword("_");
		model.addAttribute("mainTypeOne", sangpumService.getSC_cateName(searchvo));
		for( SangCateVO vo1 : sangpumService.getSC_cateName(searchvo)) {		//메뉴에 들어갈 카테고리 가져오기
			searchvo.setKeyword(vo1.getSangCode()+"__");
			model.addAttribute("listA"+vo1.getSangCode() , sangpumService.getSC_cateName(searchvo));
			for(SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
				searchvo.setKeyword(vo2.getSangCode()+"__");
				model.addAttribute("listB"+vo2.getSangCode() , sangpumService.getSC_cateName(searchvo));
			}
		}
		
		searchvo.setKeyword("1__");												//공용 카테고리 가져오기
		model.addAttribute("listA"+1 , sangpumService.getSC_cateName(searchvo));
		for(SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
			searchvo.setKeyword(vo2.getSangCode()+"__");
			model.addAttribute("listB"+vo2.getSangCode() , sangpumService.getSC_cateName(searchvo));
		}
	}
}

