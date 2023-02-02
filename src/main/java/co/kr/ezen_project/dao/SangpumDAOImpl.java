package co.kr.ezen_project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;
import co.kr.ezen_project.vo.SearchVO;

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
	public int delSang(String sangCode) {
		return session.delete("co.kr.ezen_project.dao.SangpumDAO.delSang", sangCode);
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

	@Override
	public List<SangpumVO> getSangCate(SearchVO vo) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangCate", vo);
	}

	@Override
	public List<SangpumVO> getSangAdmin(String sangCode) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangAdmin", sangCode);
	}

	@Override
	public List<SangpumVO> searchAll(String searchOption, String keyword){
		SearchVO vo = new SearchVO();
		keyword = "%"+keyword+"%";
		vo.setSearchOption(searchOption);
		vo.setKeyword(keyword);
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.searchAll", vo);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		SearchVO vo = new SearchVO();
		keyword = "%"+keyword+"%";
		vo.setSearchOption(searchOption);
		vo.setKeyword(keyword);
	    return session.selectOne("co.kr.ezen_project.dao.SangpumDAO.countArticle", vo);
	}

	@Override
	   public List<SangpumVO> getSangOrder() {
	      return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSangOrder");
	   }

	@Override
	public List<SangCateVO> getSC_cateName(SearchVO vo) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSC_cateName", vo);
	}
	
	@Override
	public List<SangCateVO> getSC_cateType(SangCateVO vo) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSC_cateType", vo);
	}

	@Override
	public List<SangpumVO> getSP_sangName(SearchVO vo) {
		return session.selectList("co.kr.ezen_project.dao.SangpumDAO.getSP_sangName", vo);
	}
}
