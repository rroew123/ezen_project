package kr.co.yangdoll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class SampleController {
	
	@RequestMapping("/sample/*")
	public void sampleMappin() {
		
	}
	
	@RequestMapping("/sample/list")
	public void sampleList() {
		
	}
}
