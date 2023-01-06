package co.kr.ezen_project.sangMem;

import co.kr.ezen_project.member.MemberVO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class ReviewVO {
	@NonNull
	private int orderNum;
	private double indiRat;
	private String revCntxt;
}
