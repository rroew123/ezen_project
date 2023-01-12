package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.ReviewVO;
import co.kr.ezen_project.vo.SangMemVO;

public interface SangMemDAO {

	List<SangMemVO> getSangMemAll();

	SangMemVO getSangMem(int orderNum);

	int addSangMem(SangMemVO vo);

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
}
