package co.kr.ezen_project.sangpum;

import co.kr.ezen_project.member.MemberVO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class SangCodeSpecVO {
	@NonNull
	private int sangSize;
	@NonNull
	private int sangColor;
	@NonNull
	private String sangCode;
	private int remStock;
}
