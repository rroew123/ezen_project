package co.kr.ezen_project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;

@Repository
public class SangpumDAOImpl implements SangpumDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public List<SangpumVO> getSangAll() {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangAll");
	}

	@Override
	public SangpumVO getSang(String sangCode) {
		return session.selectOne("co.kr.ezen_project.dao.SangpumDAO.getSang", sangCode);
	}

	@Override
	public int addSang(SangpumVO vo) {
		return session.insert("co.kr.ezen_project.dao.SangpumDAO.addSang", vo);
	}

	@Override
	public int delSang(SangpumVO vo) {
		return session.delete("co.kr.ezen_project.dao.SangpumDAO.delSang", vo);
	}
	
	@Override
	public int delSangAll() {
		return session.delete("co.kr.ezen_project.dao.SangpumDAO.delSangAll");
	}
	
	@Override
	public int updSang(SangpumVO vo) {
		return session.update("co.kr.ezen_project.dao.SangpumDAO.updSang", vo);
	}
	
	
	
	
	
	
	@Override
	public List<SangCodeSpecVO> getSCSAll() {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSCSAll");
	}

	@Override
	public SangCodeSpecVO getSCS(String sangCode) {
		return session.selectOne("co.kr.ezen_project.dao.SangpumDAO.getSCS", sangCode);
	}

	@Override
	public int addSCS(SangCodeSpecVO vo) {
		return session.insert("co.kr.ezen_project.dao.SangpumDAO.addSCS", vo);
	}

	@Override
	public int delSCS(SangCodeSpecVO vo) {
		return session.delete("co.kr.ezen_project.dao.SangpumDAO.delSCS", vo);
	}
	
	@Override
	public int delSCSAll() {
		return session.delete("co.kr.ezen_project.dao.SangpumDAO.delSCSAll");
	}
	
	@Override
	public int updSCS(SangCodeSpecVO vo) {
		return session.update("co.kr.ezen_project.dao.SangpumDAO.updSCS", vo);
	}
	
	
	
	
	
	@Override
	public List<SangCodeSpecVO> getColor(String sangCode) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getColor", sangCode);
	}

	@Override
	public List<SangCodeSpecVO> getSize(SangCodeSpecVO vo) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSize", vo);
	}

	@Override
	public List<SangpumVO> getSangRat(String sangCode) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangRat", sangCode);
	}

	@Override
	public List<SangpumVO> getSaleRat(String sangCode) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSaleRat", sangCode);
	}

	@Override
	public List<SangpumVO> getSoldOut(String sangCode) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSoldOut", sangCode);
	}

	


	
}
