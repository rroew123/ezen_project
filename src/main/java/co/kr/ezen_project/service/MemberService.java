package co.kr.ezen_project.service;

import co.kr.ezen_project.vo.MemberVO;

public interface MemberService {

	int addMem(MemberVO vo);

	int getMemCount();

	int delMemAll();

}
