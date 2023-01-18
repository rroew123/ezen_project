package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class NtcBoardVO {
	private int ntcNum;
	@NonNull
	private String ntcTitle;
	@NonNull
	private String ntcCntxt;
	private String relDate;
	
	public NtcBoardVO(int ntcNum, @NonNull String ntcTitle, @NonNull String ntcCntxt) {
		super();
		this.ntcNum = ntcNum;
		this.ntcTitle = ntcTitle;
		this.ntcCntxt = ntcCntxt;
	}
	
	
}
