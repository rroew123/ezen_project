package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.SangpumDAO;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;

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
	public int delSang(SangpumVO vo) {
		return dao.delSang(vo);
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
	public List<SangpumVO> getSangCate(SangpumVO vo) {
		return dao.getSangCate(vo);
	}


	

	

	

	

}
