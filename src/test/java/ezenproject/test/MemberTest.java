package ezenproject.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.MemberService;
import co.kr.ezen_project.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTest {
	MemberVO vo = null;
	
	@Autowired
	MemberService service;
	
	@Test
	public void getMemCountTest() { 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
	}
	
	@Test
	public void delMemAllTest() { 
		service.delMemAll();
	}
	
	@Test 
	public void addMem() { 
		vo = new MemberVO();
		vo.setMemId("kkkkk");
		vo.setEmail("y_sm0214@naver.com");
		vo.setMemName("현태");
		vo.setMemPwd("tae");
		vo.setPhone("01056841234");
		System.out.println(vo);
		service.addMem(vo);
	}
	 
}
