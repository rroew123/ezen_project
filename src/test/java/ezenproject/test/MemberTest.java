package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
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
	MemberVO vo1, vo2, vo3, vo4, vo5, vo6;
	@Autowired
	MemberService service;
	
	@Before			
	public void basicoption() {
		vo1 = new MemberVO("kkkkk","y_sm0214@naver.com","유현태","tae","01056841234");
		vo2 = new MemberVO("qqqqq","q_sm0214@naver.com","민","tae","01056841234");
		vo3 = new MemberVO("kkkkk","rroew123@naver.com","승","asd","01056841234","980214", 1,"성남시", 1, 0,  null, null, 1, 0);
		vo4 = new MemberVO("kkkkk","rroew123@naver.com","최강","asd","01056841234","980214", 1,"성남시");
		vo5 = new MemberVO("hyeon","qweqwe@naver.com","유현태","asd","01056841234");
		vo6 = new MemberVO("hyeon","qweqwe@naver.com");
	}
	
	@Test
	public void getMemCountTest() { 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
	}
	
	@Test
	public void delMemAllTest() { 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull(service.delMemAll()); 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
	}
	
	@Test 
	public void addMemTest() { 
		System.out.println(vo1);
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull( service.addMem(vo1) );
		assertNotNull( service.addMem(vo2) );
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull(service.delMemAll()); 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
	}
	
	@Test
	public void delMemTest() { 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull( service.addMem(vo1) );
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull(service.delMem(vo1)); 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
		assertNotNull(service.delMemAll()); 
		System.out.println("맴버의 인원은========================"+service.getMemCount());
	}
	
	@Test
	public void getMemOneTest() {
		String memid = vo1.getMemId();
		System.out.println(memid);
		assertNotNull( service.addMem(vo1) );
		System.out.println(service.getMemOne(memid));
	}
	
	@Test
	public void getMemAllTest() {
		assertNotNull( service.addMem(vo1) );
		System.out.println(service.getMemAll());
		assertNotNull( service.addMem(vo2) );
		System.out.println(service.getMemAll());
	}
	
	@Test
	public void udtMemTest() {
		assertNotNull( service.addMem(vo1) );
		System.out.println("===============================" + service.getMemAll());
		assertNotNull( service.udtMem(vo3) );
		System.out.println("===============================" + service.getMemAll());
		assertNotNull( service.udtMem(vo4) );
		System.out.println("===============================" + service.getMemAll());
	}
	
	@Test
	public void udtMempayTest() {
		int payment = 80000;
		vo5.setTotalPay(payment);
		service.udtMemTP(vo5);
		vo6 = service.getMemOne("hyeon");
		System.out.println(vo6);
	}
	
	@Test
	public void findIdTest() {
		String eamil = vo5.getEmail();
		System.out.println(service.findId(eamil));
	}
	
	
	@Test
	public void findPwdTest() {
		System.out.println(service.findPwd(vo6));
	}
	
	@Test
	public void udtMemPwdTest() {
		String udtPwd = "hyeon";
		vo6.setMemPwd(udtPwd);
		System.out.println(vo6);
		System.out.println(service.getMemOne("hyeon"));
		assertNotNull(service.udtMemPwd(vo6));
		System.out.println(service.getMemOne("hyeon"));
	}
	
}
