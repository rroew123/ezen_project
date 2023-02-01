package co.kr.ezen_project.service;

import java.util.List;

import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.ReviewVO;
import co.kr.ezen_project.vo.PaymentVO;
import co.kr.ezen_project.vo.SangMemVO;

public interface SangMemService {
	
	List<SangMemVO> getSangMemAll();
	
	List<SangMemVO> getSM_Mem(MemberVO vo);
	
	List<SangMemVO> getSM_MemId(String memId);
	
	SangMemVO getSangMem(String orderN);
	
	int addSangMemPay(SangMemVO vo);
	
	int addSangMemCart(SangMemVO vo);
	
	int delSangMem(SangMemVO vo);
	
	int delSangMemAll();
	
	int updSangMem(SangMemVO vo);
	
	List<CouponVO> getCouponAll();
	
	CouponVO getCoupon(int coupNum);
	
	List<CouponVO> getCoupMemId(String memId);
	
	List<CouponVO> getCoupWorkCond(int workCond);
	
	int addCoupon(CouponVO vo);
	
	int delCoupon(CouponVO vo);
	
	int delCouponAll();
	
	int updCoupon(CouponVO vo);
	
	List<ReviewVO> getReviewAll();
	
	ReviewVO getReviewON(int orderNum);
	
	List<ReviewVO> getReviewSC(String sangCode);
	
	List<ReviewVO> getReviewMI(String memId);
	
	int addReview(ReviewVO vo);
	
	int delReview(ReviewVO vo);
	
	int delReviewAll();
	
	int updReview(ReviewVO vo);
	
	List<PaymentVO> getPaymentAll();
	
	PaymentVO getPayment(int payNum);
	
	int addPayment(PaymentVO vo);
	
	int delPayment(PaymentVO vo);
	
	int delPaymentAll();
	
	int updPayment(PaymentVO vo);
	
	int getSangGender();

	SangMemVO getSangNonmem(String orderNum);

}
