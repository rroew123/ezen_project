package co.kr.ezen_project.dao;

import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.MemberVO;

@Repository
public interface MemberDAO {

	int addMem(MemberVO vo);

	String getTime();

	int getMemCount();

	int delMemAll();

}
