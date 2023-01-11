package co.kr.ezen_project.service;

import java.util.List;

import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.SangMemVO;

public interface SangMemService {
	
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
}
