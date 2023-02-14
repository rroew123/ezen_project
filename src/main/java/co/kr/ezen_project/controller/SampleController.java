package co.kr.ezen_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.kr.ezen_project.service.KakaoPay;
import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SearchVO;
import lombok.Setter;
import lombok.extern.java.Log;
 
@Log
@Controller
public class SampleController {
    
	@Autowired
	SangpumService sangpumService;
	
    @Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
         
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay() {
        log.info("kakaoPay post............................................");
        
//        return "redirect:" + kakaopay.kakaoPayReady();
        String returnData = kakaopay.kakaoPayReady();
//        return kakaopay.kakaoPayReady();
        System.out.println("*****************   " + returnData);
        return "redirect:" + returnData;
 
    }
    
    @GetMapping("/member/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        System.out.println("=====success");
    }
    
    @RequestMapping("/member/kakaoSuccess")
    public void kakaoSuccess(Model model) {
    	home_top(model);
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
 