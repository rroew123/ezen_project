package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.SangMemDAO;
import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.ReviewVO;
import co.kr.ezen_project.vo.PaymentVO;
import co.kr.ezen_project.vo.SangMemVO;

@Service
public class SangMemServiceImpl implements SangMemService {
	@Autowired
	SangMemDAO dao;

	@Override
	public List<SangMemVO> getSangMemAll() {
		return dao.getSangMemAll();
	}

	@Override
	public SangMemVO getSangMem(int orderNum) {
		return dao.getSangMem(orderNum);
	}

	@Override
	public int addSangMemPay(SangMemVO vo) {
		return dao.addSangMemPay(vo);
	}
	
	@Override
	public int addSangMemCart(SangMemVO vo) {
		return dao.addSangMemCart(vo);
	}

	@Override
	public int delSangMem(SangMemVO vo) {
		return dao.delSangMem(vo);
	}
	
	@Override
	public int delSangMemAll() {
		return dao.delSangMemAll();
	}

	@Override
	public int updSangMem(SangMemVO vo) {
		return dao.updSangMem(vo);
	}
	
	@Override
	public List<CouponVO> getCouponAll() {
		return dao.getCouponAll();
	}
	
	@Override
	public CouponVO getCoupon(int coupNum) {
		return dao.getCoupon(coupNum);
	}
	
	@Override
	public List<CouponVO> getCoupMemId(String memId) {
		return dao.getCoupMemId(memId);
	}
	
	@Override
	public List<CouponVO> getCoupWorkCond(int workCond) {
		return dao.getCoupWorkCond(workCond);
	}
	
	@Override
	public int addCoupon(CouponVO vo) {
		return dao.addCoupon(vo);
	}
	
	@Override
	public int delCoupon(CouponVO vo) {
		return dao.delCoupon(vo);
	}
	
	@Override
	public int delCouponAll() {
		return dao.delCouponAll();
	}

	@Override
	public int updCoupon(CouponVO vo) {
		return dao.updCoupon(vo);
	}
	
	@Override
	public List<ReviewVO> getReviewAll() {
		return dao.getReviewAll();
	}
	
	@Override
	public ReviewVO getReviewON(int orderNum) {
		return dao.getReviewON(orderNum);
	}
	
	@Override
	public List<ReviewVO> getReviewSC(String sangCode) {
		return dao.getReviewSC(sangCode);
	}
	
	@Override
	public List<ReviewVO> getReviewMI(String memId) {
		return dao.getReviewMI(memId);
	}
	
	@Override
	public int addReview(ReviewVO vo) {
		return dao.addReview(vo);
	}
	
	@Override
	public int delReview(ReviewVO vo) {
		return dao.delReview(vo);
	}
	
	@Override
	public int delReviewAll() {
		return dao.delReviewAll();
	}

	@Override
	public int updReview(ReviewVO vo) {
		return dao.updReview(vo);
	}
	
	@Override
	public List<PaymentVO> getPaymentAll() {
		return dao.getPaymentAll();
	}
	
	@Override
	public PaymentVO getPayment(int payNum) {
		return dao.getPayment(payNum);
	}
	
	@Override
	public int addPayment(PaymentVO vo) {
		return dao.addPayment(vo);
	}
	
	@Override
	public int delPayment(PaymentVO vo) {
		return dao.delPayment(vo);
	}
	
	@Override
	public int delPaymentAll() {
		return dao.delPaymentAll();
	}

	@Override
	public int updPayment(PaymentVO vo) {
		return dao.updPayment(vo);
	}
}
