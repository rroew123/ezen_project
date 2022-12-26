package kr.co.yangdoll.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class MemberVO {
	@NonNull
	private String memId;
	private String memName;
	private String memPwd; 
	private String phone;
	private String regdate;
}
