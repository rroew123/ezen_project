package kr.co.yangdoll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yangdoll.dao.MemberDAO;
import kr.co.yangdoll.vo.MemberVO;
import lombok.NonNull;

@Repository
public class MemberServiceImpl implements MemberService {
	
	private MemberDAO dao;
	
	@Autowired
	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	@Override
	public MemberVO getMember(String string) {
		return dao.getMember(string);
	}

	@Override
	public int addMember(MemberVO vo) {
		return dao.addMember(vo);
	}

	@Override
	public int delMember(@NonNull String memId) {
		return dao.delMember(memId);
		
	}

	@Override
	public int updateMem(MemberVO vo) {
		return dao.updateMem(vo);
		
	}
	
	
	
}
