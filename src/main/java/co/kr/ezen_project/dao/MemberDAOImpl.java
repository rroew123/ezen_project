package co.kr.ezen_project.dao;

import java.util.List;

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
		return session.insert("co.kr.ezen_project.dao.MemberDAO.addMember", vo);
	}

	@Override
	public int getMemCount() {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.getMemCount");
	}

	@Override
	public int delMemAll() {
		return session.delete("co.kr.ezen_project.dao.MemberDAO.delMemberAll");
	}

	@Override
	public int delMemAll(MemberVO vo) {
		return session.delete("co.kr.ezen_project.dao.MemberDAO.delMember", vo);
	}

	@Override
	public MemberVO getMemOne(String memId) {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.getMemOne", memId);
	}

	@Override
	public List<MemberVO> getMemAll() {
		return session.selectList("co.kr.ezen_project.dao.MemberDAO.getMemAll");
	}

	@Override
	public int udtMem(MemberVO vo) {
		return session.update("co.kr.ezen_project.dao.MemberDAO.udtMem", vo);
	}

	@Override
	public int udtMemTP(MemberVO vo) {
		return session.update("co.kr.ezen_project.dao.MemberDAO.udtMemTP", vo);
	}

	@Override
	public String findId(String email) {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.findId", email);
	}
	
	@Override
	public int udtMemPwd(MemberVO vo) {
		return session.update("co.kr.ezen_project.dao.MemberDAO.udtMemPwd", vo);
	}

	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.loginCheck", vo);
	}

	@Override
	public String findPwdmemId(String memId) {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.findPwdmemId", memId);
	}

	@Override
	public String findPwdEmail(String email) {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.findPwdEmail", email);
	}
	
	@Override
	public List<MemberVO> getMemAdmin(MemberVO vo) {
		return session.selectList("co.kr.ezen_project.dao.MemberDAO.getMemAdmin", vo);
	}


}
