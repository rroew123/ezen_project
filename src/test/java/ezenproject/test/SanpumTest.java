package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class SanpumTest {
	
	SangpumVO vo1, vo2, vo3 = null;
	
	SangCodeSpecVO vo = null;
	
	SangCodeSpecVO vo4, vo5, vo6 = null;
	
	@Autowired
	SangpumService service;
	
	@Before
	public void vobox() {
		vo1 = new SangpumVO("abc1234",10000,"바지",1,2,3,100,99,5.0,10.0,2,10);
	    vo2 = new SangpumVO("def1234",95000,"페딩",2,1,1,200,150,5.0,20.0,4,10);
	    vo3 = new SangpumVO("ghi1234",7000,"치마",2,3,4,10,5,5.0,5.0,1,5);

	}
	
	@Before
	public void SangCodeSpecvobox() {
		vo4 = new SangCodeSpecVO(100, 3, "abc1234", 30);
	    vo5 = new SangCodeSpecVO(95, 1, "def1234", 3);
	    vo6 = new SangCodeSpecVO(105, 5, "abc1234", 12);

	}
	
	@Test
	public void getSangAllTest() { 
		System.out.println("총 상품 내역========================"+service.getSangAll());
	}
	
	@Test
	public void getSangTest() {
		String sangCode = vo1.getSangCode();
		System.out.println(sangCode);
		
		assertNotNull(service.getSang(sangCode) );
		System.out.println(service.getSang(sangCode));
	}
	
	@Test
	public void addSangTest() {
		System.out.println(vo1);
		assertNotNull(service.addSang(vo1));
		System.out.println(vo2);
		assertNotNull(service.addSang(vo2));
		System.out.println(vo3);
		assertNotNull(service.addSang(vo3));
		System.out.println("상품 추가========================"+service.getSangAll());
	} 
	
	@Test
	public void delSangTest() {
		String Code = vo1.getSangCode();
		assertNotNull(service.delSang(Code));
	}
	
	@Test
	public void delSangAllTest() {
		assertNotNull(service.delSangAll());
		System.out.println(service.getSangAll());
	}
	
	@Test
	public void updSangTest() {
		assertNotNull(service.addSang(vo3));
		String sangCode = vo3.getSangCode();
		System.out.println(service.getSang(sangCode));
		System.out.println("상품 업데이트=============" + service.updSang(vo1));
		System.out.println(service.getSang(sangCode));
	}
	
	
	
	
	
	@Test
	public void getSCSAllTest() { 
		System.out.println("총 sangcodespec 내역========================"+service.getSCSAll());
	}
	
	@Test
	public void getSCSTest() {
		String sangCode = vo5.getSangCode();
		System.out.println(sangCode);
		
		assertNotNull(service.getSCS(sangCode) );
		System.out.println(service.getSCS(sangCode));
	}
	
	@Test
	public void addSCSTest() {
		System.out.println(vo4);
		assertNotNull(service.addSCS(vo4));
		System.out.println(vo5);
		assertNotNull(service.addSCS(vo5));
		System.out.println(vo6);
		assertNotNull(service.addSCS(vo6));
		
		System.out.println("상품 추가========================"+service.getSCSAll());
	}
	
	@Test
	public void delSCSTest() {
		assertNotNull(service.delSCS(vo4));
		System.out.println(service.delSCS(vo4));
	}
	
	@Test
	public void delSCSAllTest() {
		assertNotNull(service.delSCSAll());
		System.out.println(service.getSCSAll());
	}
	
	@Test
	public void updSCSTest() {
		assertNotNull(service.addSCS(vo4));
		String sangCode = vo4.getSangCode();
		System.out.println(service.getSCS(sangCode));
		System.out.println("상품 업데이트=============" + service.updSCS(vo6));
		System.out.println(service.getSCS(sangCode));
	}
	
	
	@Test
	public void getColorTest() { 
		String sangCode = vo4.getSangCode();
		assertNotNull(service.getSangRat(sangCode));
		System.out.println("색깔 확인========================"+service.getColor(sangCode));
	}
	
	
	 @Test 
	 public void getSizeTest() {
		 System.out.println(vo1); assertNotNull(service.getSize(vo4));
		 System.out.println("사이즈 확인========================"+service.getSize(vo4)); 
	 }
	
	
	@Test
	public void getSangRatTest() { 
		String sangCode = vo1.getSangCode();
		assertNotNull(service.getSangRat(sangCode));
		System.out.println("평점확인========================"+service.getSangRat(sangCode));
	}
	
	@Test
	public void getSaleRatTest() { 
		String sangCode = vo1.getSangCode();
		assertNotNull(service.getSaleRat(sangCode));
		System.out.println("평점확인========================"+service.getSaleRat(sangCode));
	}
	
	@Test
	public void getSoldOutTest() { 
		String sangCode = vo1.getSangCode();
		assertNotNull(service.getSoldOut(sangCode));
		System.out.println("평점확인========================"+service.getSoldOut(sangCode));
	}
	
	/*
	 * @Test public void getSangCateTest() { vo1.setOrby("price(DESC)");
	 * vo1.setSangCate("abc%"); System.out.println(service.getSangCate(vo1)); }
	 */

	
}
