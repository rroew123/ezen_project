package co.kr.ezen_project.service;

import java.util.List;

import co.kr.ezen_project.vo.MemberVO;

public interface MemberService {

	int addMem(MemberVO vo);

	int getMemCount();

	int delMemAll();

	int delMem(MemberVO vo);

	MemberVO getMemOne(String memid);

	List<MemberVO> getMemAll();

	int udtMem(MemberVO vo);

}
