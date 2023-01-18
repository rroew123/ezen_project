package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.ConsumerService;
import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ConsumerTest {
	FAQVO Fvo1, Fvo2, Fvo3, Fvo4;
	NtcBoardVO Nvo1,Nvo2,Nvo3, Nvo4;
	QnAboardVO Qvo1,Qvo2,Qvo3, Qvo4;
	@Autowired
	ConsumerService service;
	
	@Before			
	public void basicoptionF() {
		Fvo1 = new FAQVO(1,"환불요청","환불이 안됩니다");
		Fvo2 = new FAQVO(2,"교환요청","교환이 안됩니다");
		Fvo3 = new FAQVO(3,"반품요청","반품이 안됩니다");
		Fvo4 = new FAQVO(1,"환불요청","환불이 될 수도 있습니다");
		service.delFAQAll();
		
		Nvo1 = new NtcBoardVO(1,"배고파요","밥먹으러 갑시다");//이름을 현태로 했더니 maxmum이 5인데 왜 6개 쓰냐고 오류가 남
		Nvo2 = new NtcBoardVO(2,"오늘 오픈합니다","오픈 세일!!!!");
		Nvo3 = new NtcBoardVO(3,"사장님이 미쳤어요","미친 세일!!!!");
		Nvo4 = new NtcBoardVO(1,"배고파요","곧 점심시간이네요");
		
		service.delNtcAll();
		
		service.delQnAAll();
	}
	
	@Test
	public void getFAQCountTest() { 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
	}
	
	@Test
	public void delFAQAllTest() { 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull(service.delFAQAll()); 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
	}
	
	@Test 
	public void addFAQTest() { 
		System.out.println(Fvo1);
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull( service.addFAQ(Fvo1) );
		assertNotNull( service.addFAQ(Fvo2) );
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull(service.delFAQAll()); 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
	}
	
	@Test
	public void delFAQTest() { 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull( service.addFAQ(Fvo1) );
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull(service.delFAQ(Fvo1)); 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
		assertNotNull(service.delFAQAll()); 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
	}
	
	@Test
	public void getFAQOneTest() {
		String FAQTitle = Fvo1.getFAQTitle();
		System.out.println(FAQTitle);
		assertNotNull( service.addFAQ(Fvo1) );
		System.out.println(service.getFAQOne(FAQTitle));
	}
	
	@Test
	public void getFAQAllTest() {
		assertNotNull( service.addFAQ(Fvo1) );
		System.out.println(service.getFAQAll());
		assertNotNull( service.addFAQ(Fvo2) );
		System.out.println(service.getFAQAll());
	}
	
	@Test
	public void udtFAQTest() {
		assertNotNull( service.addFAQ(Fvo1) );
		System.out.println("===============================" + service.getFAQAll());
		assertNotNull( service.udtFAQ(Fvo4) );
		System.out.println("===============================" + service.getFAQAll());
	}
	
	
	

	
	@Test
	public void getNtcCountTest() { 
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
	}
	
	@Test
	public void delNtcAllTest() { 
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
		assertNotNull(service.delNtcAll()); 
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
	}
	
	@Test 
	public void addNtcTest() { 
		System.out.println(Nvo1);
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
		assertNotNull( service.addNtc(Nvo1) );
		assertNotNull( service.addNtc(Nvo2) );
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
		assertNotNull(service.delNtcAll()); 
		System.out.println("맴버의 인원은========================"+service.getNtcCount());
	}
	
	
	@Test
	public void getNtcAllTest() {
		assertNotNull( service.addNtc(Nvo1) );
		System.out.println(service.getNtcAll());
		assertNotNull( service.addNtc(Nvo2) );
		System.out.println(service.getNtcAll());
	}
	
	@Test
	public void udtNtcTest() {
		assertNotNull( service.addNtc(Nvo1) );
		System.out.println("===============================" + service.getNtcAll());
		assertNotNull( service.udtNtc(Nvo4) );
		System.out.println("===============================" + service.getNtcAll());
	}
	
	
	
	
	
	@Test
	public void getQnACountTest() { 
		System.out.println("맴버의 인원은========================"+service.getQnACount());
	}
	
	@Test
	public void delQnAAllTest() { 
		System.out.println("맴버의 인원은========================"+service.getQnACount());
		assertNotNull(service.delQnAAll()); 
		System.out.println("맴버의 인원은========================"+service.getQnACount());
	}
	
	@Test 
	public void addQnATest() { 
		System.out.println(Qvo1);
		System.out.println("맴버의 인원은========================"+service.getQnACount());
		assertNotNull( service.addQnA(Qvo1) );
		assertNotNull( service.addQnA(Qvo2) );
		System.out.println("맴버의 인원은========================"+service.getQnACount());
		assertNotNull(service.delQnAAll()); 
		System.out.println("맴버의 인원은========================"+service.getQnACount());
	}
	
	@Test
	public void delQnATest() { 
		System.out.println("맴버의 인원은========================"+service.getQnACount());
		assertNotNull( service.addQnA(Qvo1) );
		System.out.println("맴버의 인원은========================"+service.getQnACount());
		assertNotNull(service.delQnAAll()); 
		System.out.println("맴버의 인원은========================"+service.getFAQCount());
	}
	
	
	
	@Test
	public void getQnAAllTest() {
		assertNotNull( service.addQnA(Qvo1) );
		System.out.println(service.getQnAAll());
		assertNotNull( service.addQnA(Qvo2) );
		System.out.println(service.getQnAAll());
	}
	
	@Test
	public void getQnAmemIdTest() {
		String memid = Qvo1.getMemId();
		assertNotNull( service.addQnA(Qvo1) );
		assertNotNull( service.addQnA(Qvo2) );
		assertNotNull( service.addQnA(Qvo3) );
		System.out.println(service.getQnAmemId(memid));
	}
	
	@Test
	public void udtQnATest() {
		assertNotNull( service.addQnA(Qvo1) );
		System.out.println("===============================" + service.getQnAAll());
		assertNotNull( service.udtQnA(Qvo3) );
		System.out.println("===============================" + service.getQnAAll());
		assertNotNull( service.udtQnA(Qvo4) );
		System.out.println("===============================" + service.getQnAAll());
	}
}
