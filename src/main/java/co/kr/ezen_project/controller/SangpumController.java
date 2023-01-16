package co.kr.ezen_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.kr.ezen_project.service.SangpumService;

@Controller
@RequestMapping("/sangpum/")
public class SangpumController {
	@Autowired
	SangpumService sangpumService;
	
	@RequestMapping("/category")
	public void category(String SangCode, Model model) {
		SangCode = SangCode + "%";
		model.addAttribute("list", sangpumService.getSangCate(SangCode));
	}
	@RequestMapping({"/category_best","/category_new","/category_lowprice","/category_highprice"})
	public void category_(Model model) {
		
	}
	@RequestMapping("/order")
	public void order() {
		
	}
	@RequestMapping("/sangpum")
	public void sangpum() {
		
	}
	@RequestMapping("/sangpum_Info")
	public void sangpum_Info() {
		
	}
	@RequestMapping("/sangpum_QnA")
	public void sangpum_QnA() {
		
	}
	@RequestMapping("/sangpum_review")
	public void sangpum_review() {
		
	}
	@RequestMapping("/search")
	public void search() {
		
	}
}
