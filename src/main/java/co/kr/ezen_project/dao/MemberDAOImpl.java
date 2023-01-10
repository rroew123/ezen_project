package co.kr.ezen_project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	SqlSession session;
	
	@Override
	public String getTime() {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.getTime");	//테스트용
	}

	@Override
	public int addMem(MemberVO vo) {
		return session.insert("co.kr.ezen_project.dao.MemberDAO.addMember");
	}

	@Override
	public int getMemCount() {
		return session.insert("co.kr.ezen_project.dao.MemberDAO.getMemCount");
	}

	@Override
	public int delMemAll() {
		return session.insert("co.kr.ezen_project.dao.MemberDAO.delMemberAll");
	}

}
