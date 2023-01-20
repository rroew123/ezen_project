package co.kr.ezen_project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.vo.QnAboardVO;

@Controller
@RequestMapping("/QnA/")
public class QnAController {

	@Inject
	ConsumerService consumerService;

	@RequestMapping({ "/QnA_Write", "/QnA_Update", "/QnAPage" })
	public void Board() {

	}

	

	/*
	 * @RequestMapping(value = "/QnABoard") public ModelAndView list(ModelAndView
	 * mav) { mav.setViewName("/QnA/QnABoard"); mav.addObject("list",
	 * consumerService.getQnAAll()); System.out.println(mav); return mav; }
	 */

	@RequestMapping(value = "/WriteProc", method = RequestMethod.POST)
	public String writeProc(QnAboardVO qvo1, HttpSession session) {
		consumerService.addQnA(qvo1);
		System.out.println("=================");
		session.setAttribute("boardInfo", qvo1);
		System.out.println("==================second");
		return "/QnA/QnA_Write";
	}

	@RequestMapping(value = "/UpdateProc", method = RequestMethod.POST)
	public String UpdateProc(QnAboardVO qvo3, HttpSession session) {
		consumerService.udtQnA(qvo3);
		session.setAttribute("UpdateInfo", qvo3);
		return "/QnA/QnA_Update";
	} 
	@RequestMapping(value = "/QnA_deleteProc", method = RequestMethod.GET)
	public String QnA_deleteProc(int qnaNum) {
		consumerService.delQnA(qnaNum);
		
		return "redirect:QnABoard";
	
	}
	@RequestMapping("/QnABoard")
	public void QnABoard(Model model) {
		System.out.println(consumerService.getQnAAll());
		model.addAttribute("list", consumerService.getQnAAll());
	}
	
	@RequestMapping(value = "/QnAPage", method = RequestMethod.GET)
	public void QnAPage(int qnaNum, Model model) {
		model.addAttribute("qnavo", consumerService.getQnAOne(qnaNum));
	}


}

