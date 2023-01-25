package co.kr.ezen_project.service;

import java.util.List;

import co.kr.ezen_project.vo.MemberVO;

public interface MemberService {

	int addMem(MemberVO vo);

	int getMemCount();

	int delMemAll();

	int delMem(String memId);

	MemberVO getMemOne(String memid);

	List<MemberVO> getMemAll();

	int udtMem(MemberVO vo);

	int udtMemTP(MemberVO vo);
	
	int udtMemAdmin(MemberVO vo);

	String findId(String email);

	int udtMemPwd(MemberVO vo);

	MemberVO loginCheck(MemberVO vo6);

	MemberVO findPwd(MemberVO vo);

	List<MemberVO> getMemAdmin(String memCate);
	
	List<MemberVO> searchAll(String searchOption, String keyword);

	int countArticle(String searchOption, String keyword);

	

}
