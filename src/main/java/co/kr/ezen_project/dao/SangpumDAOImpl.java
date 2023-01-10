package co.kr.ezen_project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.SangpumVO;

@Repository
public class SangpumDAOImpl implements SangpumDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public List<Object> getSangList() {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangList");
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
	public int updSang(SangpumVO vo) {
		return session.update("co.kr.ezen_project.dao.SangpumDAO.updSang", vo);
	}
}
