package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.MemberVO;

public interface MemberDAO {

	int addMem(MemberVO vo);

	String getTime();

	int getMemCount();

	int delMemAll();

	int delMemAll(MemberVO vo);

	MemberVO getMemOne(String memId);

	List<MemberVO> getMemAll();

	int udtMem(MemberVO vo);

	int udtMemTP(MemberVO vo);

	String findId(String email);

	int udtMemPwd(MemberVO vo);

	MemberVO loginCheck(MemberVO vo);

	String findPwdmemId(String memId);

	String findPwdEmail(String email);

}
