package co.kr.ezen_project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.CouponVO;
import co.kr.ezen_project.vo.SangMemVO;

@Repository
public class SangMemDAOImpl implements SangMemDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public List<SangMemVO> getSangMemAll() {
		return session.selectList("co.kr.ezen_project.dao.SangMemDAO.getSangMemAll");
	}

	@Override
	public SangMemVO getSangMem(int orderNum) {
		return session.selectOne("co.kr.ezen_project.dao.SangMemDAO.getSangMem", orderNum);
	}

	@Override
	public int addSangMem(SangMemVO vo) {
		return session.insert("co.kr.ezen_project.dao.SangMemDAO.addSangMem", vo);
	}

	@Override
	public int delSangMem(SangMemVO vo) {
		return session.delete("co.kr.ezen_project.dao.SangMemDAO.delSangMem", vo);
	}
	
	@Override
	public int delSangMemAll() {
		return session.delete("co.kr.ezen_project.dao.SangMemDAO.delSangMemAll");
	}
	
	@Override
	public int updSangMem(SangMemVO vo) {
		return session.update("co.kr.ezen_project.dao.SangMemDAO.updSangMem", vo);
	}
	
	@Override
	public List<CouponVO> getCouponAll() {
		return session.selectList("co.kr.ezen_project.dao.SangMemDAO.getCouponAll");
	}

	@Override
	public CouponVO getCoupon(int coupNum) {
		return session.selectOne("co.kr.ezen_project.dao.SangMemDAO.getCoupon", coupNum);
	}
	
	@Override
	public List<CouponVO> getCoupMemId(String memId) {
		return session.selectList("co.kr.ezen_project.dao.SangMemDAO.getCoupMemId", memId);
	}
	
	@Override
	public List<CouponVO> getCoupWorkCond(int workCond) {
		return session.selectList("co.kr.ezen_project.dao.SangMemDAO.getCoupWorkCond", workCond);
	}

	@Override
	public int addCoupon(CouponVO vo) {
		return session.insert("co.kr.ezen_project.dao.SangMemDAO.addCoupon", vo);
	}

	@Override
	public int delCoupon(CouponVO vo) {
		return session.delete("co.kr.ezen_project.dao.SangMemDAO.delCoupon", vo);
	}
	
	@Override
	public int delCouponAll() {
		return session.delete("co.kr.ezen_project.dao.SangMemDAO.delCouponAll");
	}
	
	@Override
	public int updCoupon(CouponVO vo) {
		return session.update("co.kr.ezen_project.dao.SangMemDAO.updCoupon", vo);
	}
}
