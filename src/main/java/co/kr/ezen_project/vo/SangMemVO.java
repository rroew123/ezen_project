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
	private int orderNum;
	private String memId;
	private int payNum;
	private int sangSize;
	private int sangColor;
	@NonNull
	private String sangCode;
	private int sangCnt;
	private Date ordDate;
	private int ordStat;
	private String sangName;
	private int price;
	
	public SangMemVO(int orderNum, @NonNull String memId, int sangSize, int sangColor,
			@NonNull String sangCode,  int sangCnt, int ordStat, String sangName, int price) {
		super();
		this.orderNum = orderNum;
		this.memId = memId;
		this.sangSize = sangSize;
		this.sangColor = sangColor;
		this.sangCode = sangCode;
		this.sangCnt = sangCnt;
		this.ordStat = ordStat;
		this.sangName = sangName;
		this.price = price;
	}

	public SangMemVO(int sangSize, int sangColor, @NonNull String sangCode) {
		super();
		this.sangSize = sangSize;
		this.sangColor = sangColor;
		this.sangCode = sangCode;
	}
	
	
	
}
