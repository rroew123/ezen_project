package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.ReviewVO;
import co.kr.ezen_project.vo.PaymentVO;
import co.kr.ezen_project.vo.SangMemVO;
import co.kr.ezen_project.vo.SangpumVO;

public interface SangMemDAO {

	List<SangMemVO> getSangMemAll();

	SangMemVO getSangMem(String orderNum);

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

	void delCouponMem(String memId);

	List<SangMemVO> getSM_Mem(MemberVO vo);

	void delSM_Mem(String memId);

	void delReview_Mem(String memId);

	void delPayment_Mem(String memId);

	List<SangMemVO> getSM_MemId(String memId);
	
	SangMemVO getSangGender(String orderNum);

	SangMemVO getSangNonmem(String orderNum);


}
