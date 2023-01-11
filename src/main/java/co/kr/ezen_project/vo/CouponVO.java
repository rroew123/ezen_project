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
public class CouponVO {
	@NonNull
	private int coupNum;
	@NonNull
	private String memId;
	@NonNull
	private String coupName;
	private int coupType;
	private String expirDate;
	private int workCond;
	private int discount;
}
