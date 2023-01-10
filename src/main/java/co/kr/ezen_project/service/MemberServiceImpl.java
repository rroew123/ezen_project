package co.kr.ezen_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.dao.MemberDAO;
import co.kr.ezen_project.vo.MemberVO;

@Repository
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	
	@Override
	public int addMem(MemberVO vo) {
		return dao.addMem(vo);
	}
	@Override
	public int getMemCount() {
		return dao.getMemCount();
	}
	@Override
	public int delMemAll() {
		return dao.delMemAll();
	}

}
