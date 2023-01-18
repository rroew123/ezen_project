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
public class QnAboardVO {
	 
	private int qnaNum;
	@NonNull
	private String memId;
	private int qnaCat;
	@NonNull
	private String brdTitle;
	@NonNull
	private String brdCntxt;
	private String writDate;
	private String ansCntxt;
	private String ansDate;

	
	
	
}
