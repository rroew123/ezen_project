package co.kr.ezen_project.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class FAQVO {
	private int FAQNum;
	private int FAQCat;
	@NonNull
	private String FAQTitle;
	@NonNull
	private String FAQCntxt;
	public FAQVO(int fAQCat, @NonNull String fAQTitle, @NonNull String fAQCntxt) {
		super();
		FAQCat = fAQCat;
		FAQTitle = fAQTitle;
		FAQCntxt = fAQCntxt;
	}
	
	
}
