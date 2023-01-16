package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.MemberDAO;
import co.kr.ezen_project.vo.MemberVO;

@Service
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
	@Override
	public int delMem(MemberVO vo) {
		return dao.delMemAll(vo);
	}
	@Override
	public MemberVO getMemOne(String memId) {
		return dao.getMemOne(memId);
	}
	@Override
	public List<MemberVO> getMemAll() {
		return dao.getMemAll();
	}
	@Override
	public int udtMem(MemberVO vo) {
		return dao.udtMem(vo);
	}
	@Override
	public int udtMemTP(MemberVO vo) {
		return dao.udtMemTP(vo);
	}
	@Override
	public String findId(String email) {
		return dao.findId(email);
	}
	@Override
	public String findPwd(String memId,String email) {
		if(dao.findPwdmemId(memId).equals(dao.findPwdEmail(email))) {
			return dao.findPwdmemId(memId);
		}
		return null;
	}
	@Override
	public int udtMemPwd(MemberVO vo) {
		return dao.udtMemPwd(vo);
	}
	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return dao.loginCheck(vo);
	}

}
