package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class QnAboardVO {
	@NonNull
	private int QnANum;
	@NonNull
	private String memId;
	private int QnACat;
	@NonNull
	private String brdTitle;
	@NonNull
	private String brdCntxt;
	private String writDate;
	private String ansCntxt;
	private String ansDate;
}
