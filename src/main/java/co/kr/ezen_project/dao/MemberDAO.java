package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.MemberVO;

public interface MemberDAO {

	int addMem(MemberVO vo);

	String getTime();

	int getMemCount();

	int delMemAll();

	int delMem(String memId);

	MemberVO getMemOne(String memId);

	List<MemberVO> getMemAll();

	int udtMem(MemberVO vo);

	int udtMemTP(MemberVO vo);
	
	int udtMemAdmin(MemberVO vo);

	String findId(String email);

	int udtMemPwd(MemberVO vo);

	MemberVO loginCheck(MemberVO vo);

	MemberVO findPwd(MemberVO vo);

	List<MemberVO> getMemAdmin(String memCate);
	
	List<MemberVO> searchAll(String searchOption, String keyword);

	public int countArticle(String searchOption, String keyword);

	int getGender();
}
