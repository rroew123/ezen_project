package co.kr.ezen_project.vo;

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
