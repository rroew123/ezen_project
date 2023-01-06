package co.kr.ezen_project.consumerBoard;

import co.kr.ezen_project.member.MemberVO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class FAQVO {
	@NonNull
	private int FAQCat;
	private String FAQTitle;
	private String FAQCntxt;
}
