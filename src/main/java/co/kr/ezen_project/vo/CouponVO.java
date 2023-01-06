package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class CouponVO {
	@NonNull
	private int coupNum;
	@NonNull
	private String memId;
	@NonNull
	private String coupName;
	private int couptype;
	private String expirDate;
	private int workCond;
}
