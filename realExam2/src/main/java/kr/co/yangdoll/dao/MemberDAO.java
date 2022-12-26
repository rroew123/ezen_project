package kr.co.yangdoll.dao;

import kr.co.yangdoll.vo.MemberVO;
import lombok.NonNull;

public interface MemberDAO {
	int addMember(MemberVO vo);

	String getTime();

	MemberVO getMember(String string);

	int delMember(@NonNull String memId);

	int updateMem(MemberVO vo);

}
