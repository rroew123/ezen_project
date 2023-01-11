package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.dao.SangMemDAO;
import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.SangMemVO;

@Repository 
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
	public int addSangMem(SangMemVO vo) {
		return dao.addSangMem(vo);
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
}
