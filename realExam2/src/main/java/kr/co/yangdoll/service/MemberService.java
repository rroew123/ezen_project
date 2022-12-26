package kr.co.yangdoll.service;

import kr.co.yangdoll.vo.MemberVO;
import lombok.NonNull;

public interface MemberService {

	MemberVO getMember(String string);

	int addMember(MemberVO vo);

	int delMember(@NonNull String memId);

	int updateMem(MemberVO vo);

}
