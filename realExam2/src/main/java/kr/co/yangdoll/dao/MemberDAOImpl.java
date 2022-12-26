package kr.co.yangdoll.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yangdoll.vo.MemberVO;
import lombok.NonNull;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSession session;

	@Override
	public String getTime() {
		return session.selectOne("kr.co.yangdoll.MemberDAO.getTime");
	}

	@Override
	public MemberVO getMember(String memId) {
		return session.selectOne("kr.co.yangdoll.MemberDAO.getMember", memId);
	}

	@Override
	public int addMember(MemberVO vo) {
		return session.update("kr.co.yangdoll.MemberDAO.addMember", vo);
	}

	@Override
	public int delMember(@NonNull String memId) {
		return session.update("kr.co.yangdoll.MemberDAO.delMember", memId);
	}

	@Override
	public int updateMem(MemberVO vo) {
		return session.update("kr.co.yangdoll.MemberDAO.updateMem", vo);
	}
	
	
	
}
