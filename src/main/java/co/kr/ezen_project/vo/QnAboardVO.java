package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class QnAboardVO {
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
	
	public QnAboardVO(int qnANum, @NonNull String memId, int qnACat, @NonNull String brdTitle,
			@NonNull String brdCntxt) {
		super();
		QnANum = qnANum;
		this.memId = memId;
		QnACat = qnACat;
		this.brdTitle = brdTitle;
		this.brdCntxt = brdCntxt;
	}
	
	
}
