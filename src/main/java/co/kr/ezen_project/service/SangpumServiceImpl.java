package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.dao.SangpumDAO;
import co.kr.ezen_project.vo.SangpumVO;

@Repository
public class SangpumServiceImpl implements SangpumService {
	
	@Autowired
	SangpumDAO dao;

	@Override
	public List<Object> getSangList() {
		return dao.getSangList();
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
	public int updSang(SangpumVO vo) {
		return dao.updSang(vo);
	}


}
