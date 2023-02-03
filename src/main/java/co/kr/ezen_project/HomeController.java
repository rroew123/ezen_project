package co.kr.ezen_project;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SearchVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	SangpumService sangpumService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		SearchVO searchvo = new SearchVO();
		
		searchvo.setKeyword("1__");
		model.addAttribute("listA"+1 , sangpumService.getSC_cateName(searchvo));
		for(SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
			searchvo.setKeyword(vo2.getSangCode()+"__");
			model.addAttribute("listB"+vo2.getSangCode() , sangpumService.getSC_cateName(searchvo));
		}
		
		searchvo.setKeyword("_");
		model.addAttribute("mainTypeOne", sangpumService.getSC_cateName(searchvo));
		
		for( SangCateVO vo1 : sangpumService.getSC_cateName(searchvo)) {
			searchvo.setKeyword(vo1.getSangCode()+"__");
			model.addAttribute("listA"+vo1.getSangCode() , sangpumService.getSC_cateName(searchvo));
			for(SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
				searchvo.setKeyword(vo2.getSangCode()+"__");
				model.addAttribute("listB"+vo2.getSangCode() , sangpumService.getSC_cateName(searchvo));
			}
		}
		
		
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("photo",sangpumService.getSangAll());
		
		return "home";
	}
	
	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public void home_top(Locale locale, Model model, HttpSession session) {
		SearchVO searchvo = new SearchVO();
		searchvo.setKeyword("_");
		model.addAttribute("mainTypeOne", sangpumService.getSC_cateName(searchvo));
		for( SangCateVO vo1 : sangpumService.getSC_cateName(searchvo)) {
			searchvo.setKeyword(vo1.getSangCode()+"__");
			model.addAttribute("listA"+vo1.getSangCode() , sangpumService.getSC_cateName(searchvo));
			for(SangCateVO vo2 : sangpumService.getSC_cateName(searchvo)) {
				searchvo.setKeyword(vo2.getSangCode()+"__");
				model.addAttribute("listB"+vo2.getSangCode() , sangpumService.getSC_cateName(searchvo));
			}
		}
	}
	
}
