package co.kr.ezen_project.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor 
@RequiredArgsConstructor 
@AllArgsConstructor
public class SangMemVO {
	@NonNull
	private int orderNum;
	@NonNull
	private String memId;
	private int payNum;
	@NonNull
	private int sangSize;
	@NonNull
	private int sangColor;
	@NonNull
	private String sangCode;
	@NonNull
	private int sangCnt;
	private Date ordDate;
	private int ordStat;
	
	public SangMemVO(@NonNull int orderNum, @NonNull String memId, @NonNull int sangSize, @NonNull int sangColor,
			@NonNull String sangCode, @NonNull int sangCnt, int ordStat) {
		super();
		this.orderNum = orderNum;
		this.memId = memId;
		this.sangSize = sangSize;
		this.sangColor = sangColor;
		this.sangCode = sangCode;
		this.sangCnt = sangCnt;
		this.ordStat = ordStat;
	}

	public SangMemVO(@NonNull int sangSize, @NonNull int sangColor, @NonNull String sangCode) {
		super();
		this.sangSize = sangSize;
		this.sangColor = sangColor;
		this.sangCode = sangCode;
	}
	
	
	
}
