package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.SangpumService;
import co.kr.ezen_project.vo.SangpumVO;
import lombok.NonNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SanpumTest {
	SangpumVO vo1, vo2, vo3 = null;
	SangpumVO vo = null;
	
	@Autowired
	SangpumService service;
	
	@Before
	public void vobox() {
		vo1 = new SangpumVO("abc1234",10000,"바지",1,2,3,100,99,5.0,10.0,2,0);
	    vo2 = new SangpumVO("def1234",95000,"페딩",2,1,1,200,150,5.0,20.0,4,10);
	    vo3 = new SangpumVO("ghi1234",7000,"치마",2,3,4,10,5,5.0,5.0,1,5);
	}
	
	@Test
	public void getSangListTest() { 
		System.out.println("총 상품 내역========================"+service.getSangList());
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
		System.out.println(vo3);
		assertNotNull(service.addSang(vo3));
		System.out.println("상품 추가========================"+service.getSangList());
	} 
	
	@Test
	public void delSangTest() {
		assertNotNull(service.delSang(vo1));
		System.out.println(service.delSang(vo1));
	}
	
	@Test
	public void updSangTest() {
		assertNotNull(service.updSang(vo1));
		System.out.println("상품 업데이트=============" + service.updSang(vo1));
	}
}
