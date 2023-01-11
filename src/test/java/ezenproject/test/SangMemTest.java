package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.SangMemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class SangMemTest {

	SangMemVO vo1, vo2, vo3 = null;
	
	CouponVO vo4, vo5, vo6 = null;
	
	@Autowired
	SangMemService service;
	
	@Before
	public void vobox() {
		vo1 = new SangMemVO(123456,"hi",654321,1,2,"abc1234",1,null,3);
	    vo2 = new SangMemVO(111222,"kelly",222111,2,1,"def1234",2,null,1);
	    vo3 = new SangMemVO(555666,"hyunji",666555,2,3,"hij1234",1,null,1);

	}
	
	@Before
	public void Coupvobox() {
		vo4 = new CouponVO(77777, "hyeon", "생일", 5000, null, 5000, 1000);
	    vo5 = new CouponVO(66666, "hyeon", "5천원", 10000, null, 80000, 10000);
	    vo6 = new CouponVO(55555, "hyeon", "첫주문", 7000, null, 30000, 7000);
	}
	
	@Test
	public void getSangMemAllTest() { 
		System.out.println("총 상멤 내역========================"+service.getSangMemAll());
	}
	
	@Test
	public void getSangMemTest() {
		int orderNum = vo1.getOrderNum();
		System.out.println(orderNum);
		
		assertNotNull(service.getSangMem(orderNum) );
		System.out.println(service.getSangMem(orderNum));
	}
	
	@Test
	public void addSangMemTest() {
		System.out.println(vo1);
		assertNotNull(service.addSangMem(vo1));
		System.out.println(vo2);
		assertNotNull(service.addSangMem(vo2));
		System.out.println(vo3);
		assertNotNull(service.addSangMem(vo3));
		System.out.println("상멤 추가========================"+service.getSangMemAll());
	} 
	
	@Test
	public void delSangMemTest() {
		assertNotNull(service.delSangMem(vo1));
		System.out.println(service.delSangMem(vo1));
	}
	
	@Test
	public void delSangMemAllTest() {
		assertNotNull(service.delSangMemAll());
		System.out.println(service.getSangMemAll());
	}
	
	@Test
	public void updSangMemTest() {
		assertNotNull(service.addSangMem(vo3));
		int orderNum = vo3.getOrderNum();
		System.out.println(service.getSangMem(orderNum));
		System.out.println("상멤 업데이트=============" + service.updSangMem(vo1));
		System.out.println(service.getSangMem(orderNum));
	}
	
	@Test
	public void getCouponAll() { 
		System.out.println("총 Coupon 내역========================"+service.getCouponAll());
	}
	
	@Test
	public void getCoupon() {
		int coupNum = vo5.getCoupNum();
		System.out.println(coupNum);
		
		assertNotNull(service.getCoupon(coupNum) );
		System.out.println(service.getCoupon(coupNum));
	}
	
	@Test
	public void getCoupMemId() {
		String memId = vo5.getMemId();
		System.out.println(memId);
		
		assertNotNull(service.getCoupMemId(memId) );
		System.out.println(service.getCoupMemId(memId));
	}
	
	@Test
	public void getCoupWorkCond() {
		int workCond = vo5.getWorkCond();
		System.out.println(workCond);
		
		assertNotNull(service.getCoupWorkCond(workCond) );
		System.out.println(service.getCoupWorkCond(workCond));
	}
	
	@Test
	public void addCouponTest() {
		System.out.println(vo4);
		assertNotNull(service.addCoupon(vo4));
		System.out.println(vo5);
		assertNotNull(service.addCoupon(vo5));
		System.out.println(vo6);
		assertNotNull(service.addCoupon(vo6));
		
		System.out.println("상품 추가========================"+service.getCouponAll());
	}
	
	@Test
	public void delCouponTest() {
		assertNotNull(service.delCoupon(vo4));
		System.out.println(service.delCoupon(vo4));
	}
	
	@Test
	public void delCouponAllTest() {
		assertNotNull(service.delCouponAll());
		System.out.println(service.getCouponAll());
	}
	
	@Test
	public void updCouponTest() {
		assertNotNull(service.addCoupon(vo4));
		int coupNum = vo4.getCoupNum();
		System.out.println(service.getCoupon(coupNum));
		System.out.println("상품 업데이트=============" + service.updCoupon(vo6));
		System.out.println(service.getCoupon(coupNum));
	}

}