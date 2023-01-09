package co.kr.ezen_project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	SqlSession session;
	
	@Override
	public String getTime() {
		return session.selectOne("co.kr.ezen_project.dao.MemberDAO.getTime");	//테스트용
	}

}
