package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.SangpumDAO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;
import co.kr.ezen_project.vo.SearchVO;

@Service
public class SangpumServiceImpl implements SangpumService {
	
	@Autowired
	SangpumDAO dao;

	@Override
	public List<SangpumVO> getSangAll() {
		return dao.getSangAll();
	}

	@Override
	public SangpumVO getSang(String sangCode) {
		return dao.getSang(sangCode);
	}

	@Override
	public int addSang(SangpumVO vo) {
		return dao.addSang(vo);
	}

	@Override
	public int delSang(String sangCode) {
		return dao.delSang(sangCode);
	}
	
	@Override
	public int delSangAll() {
		return dao.delSangAll();
	}

	@Override
	public int updSang(SangpumVO vo) {
		return dao.updSang(vo);
	}
	
	
	
	
	
	
	
	@Override
	public List<SangCodeSpecVO> getSCSAll() {
		return dao.getSCSAll();
	}
	
	@Override
	public SangCodeSpecVO getSCS(String sangCode) {
		return dao.getSCS(sangCode);
	}
	
	@Override
	public int addSCS(SangCodeSpecVO vo) {
		return dao.addSCS(vo);
	}
	
	@Override
	public int delSCS(SangCodeSpecVO vo) {
		return dao.delSCS(vo);
	}
	
	@Override
	public int delSCSAll() {
		return dao.delSCSAll();
	}

	@Override
	public int updSCS(SangCodeSpecVO vo) {
		return dao.updSCS(vo);
	}
	

	@Override
	public List<SangCodeSpecVO> getColor(String sangCode) {
		return dao.getColor(sangCode);
	}

	@Override
	public List<SangCodeSpecVO> getSize(SangCodeSpecVO vo) {
		return dao.getSize(vo);
	}

	@Override
	public List<SangpumVO> getSangRat(String sangCode) {
		return dao.getSangRat(sangCode);
	}

	@Override
	public List<SangpumVO> getSaleRat(String sangCode) {
		return dao.getSaleRat(sangCode);
	}

	@Override
	public List<SangpumVO> getSoldOut(String sangCode) {
		return dao.getSoldOut(sangCode);
	}

	@Override
	public List<SangpumVO> getSangCate(SearchVO vo) {
		return dao.getSangCate(vo);
	}

	@Override
	public List<SangpumVO> getSangAdmin(String sangCode) {
		return dao.getSangAdmin(sangCode);
	}

	@Override
	public List<SangpumVO> searchAll(String searchOption, String keyword){
	   return dao.searchAll(searchOption, keyword);
	}
	@Override
	public int countArticle(String searchOption, String keyword){
	   return dao.countArticle(searchOption, keyword);
	}
	
	@Override
	   public List<SangpumVO> getSangOrder() {
	      return dao.getSangOrder();
	   }

	@Override
	public List<SangCateVO> getSC_cateName(SearchVO vo) {
		 return dao.getSC_cateName(vo);
	}
	
	@Override
	public List<SangCateVO> getSC_cateType(SangCateVO vo) {
		 return dao.getSC_cateType(vo);
	}

	@Override
	public List<SangpumVO> getSP_sangName(SearchVO vo) {
		return dao.getSP_sangName(vo);
	}

	@Override
	public SangCodeSpecVO getSCSremStock(SangCodeSpecVO scsvo) {
		return dao.getSCSremStock(scsvo);
	}

}
