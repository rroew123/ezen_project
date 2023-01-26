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
	private int faqNum;
	private int faqCat;
	@NonNull
	private String faqTitle;
	@NonNull
	private String faqCntxt;
	
	public FAQVO(int faqCat, @NonNull String faqTitle, @NonNull String faqCntxt) {
		super();
		this.faqCat = faqCat;
		this.faqTitle = faqTitle;
		this.faqCntxt = faqCntxt;
	}
	
	
}
