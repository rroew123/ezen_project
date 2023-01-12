package ezenproject.test;

import static org.junit.Assert.assertNotNull;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.kr.ezen_project.service.SangMemService;
import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.ReviewVO;
import co.kr.ezen_project.vo.SangMemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class SangMemTest {

	SangMemVO vo1, vo2, vo3 = null;
	
	CouponVO vo4, vo5, vo6 = null;
	
	ReviewVO rvo1, rvo2, rvo3 = null;
	
	@Autowired
	SangMemService service;
	
	@Before
	public void vobox() {
		vo1 = new SangMemVO(123456,"hyeon",654321,1,2,"abc1234",1,null,3);
	    vo2 = new SangMemVO(111222,"hyeon",222111,2,1,"abc1234",2,null,1);
	    vo3 = new SangMemVO(555666,"hyeon",666555,2,3,"abc1234",1,null,1);

	}
	
	@Before
	public void Coupvobox() {
		vo4 = new CouponVO(77777, "hyeon", "생일", 5000, new Date(122,04,22), 5000, 1000);
	    vo5 = new CouponVO(66666, "hyeon", "5천원", 10000, new Date(124,10,30), 80000, 10000);
	    vo6 = new CouponVO(55555, "hyeon", "첫주문", 7000, new Date(123,03,31), 30000, 7000);
	}
	
	@Before
	public void Revvobox() {
		rvo1 = new ReviewVO(1234, 5.0, "dfsdsadadadsa");
	    rvo2 = new ReviewVO(5555, 1.2, "fdsfsfsdfdsfsfdsfds");
	    rvo3 = new ReviewVO(9999, 3.0, "gfsfdsfsfdsfs");
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
	
	@Test
	public void getReviewAllTest() { 
		System.out.println("총 Review 내역========================"+service.getReviewAll());
	}
	
	@Test
	public void getReviewONTest() {
		int orderNum = rvo1.getOrderNum();
		System.out.println(orderNum);
		
		assertNotNull(service.getReviewON(orderNum) );
		System.out.println(service.getReviewON(orderNum));
	}
	
	@Test
	public void getReviewSCTest() { 
		String sangCode = vo1.getSangCode();
		System.out.println(sangCode);
		
		System.out.println(service.getReviewSC(sangCode));
	}
	
	@Test
	public void getReviewMITest() { 
		String memId = vo1.getMemId();
		System.out.println(memId);
		
		System.out.println(service.getReviewMI(memId));
	}
	@Test
	public void addReviewTest() {
		System.out.println(rvo1);
		assertNotNull(service.addReview(rvo1));
		System.out.println(rvo2);
		assertNotNull(service.addReview(rvo2));
		System.out.println(rvo3);
		assertNotNull(service.addReview(rvo3));
		
		System.out.println("상품 추가========================"+service.getReviewAll());
	}
	
	@Test
	public void delReviewTest() {
		assertNotNull(service.delReview(rvo1));
		System.out.println(service.delReview(rvo1));
	}
	
	@Test
	public void delReviewAllTest() {
		assertNotNull(service.delReviewAll());
		System.out.println(service.getReviewAll());
	}
	
	@Test
	public void updReviewTest() {
		assertNotNull(service.addReview(rvo1));
		int orderNum = vo3.getOrderNum();
		System.out.println(service.getReviewON(orderNum));
		System.out.println("상품 업데이트=============" + service.updReview(rvo3));
		System.out.println(service.getReviewON(orderNum));
	}

}