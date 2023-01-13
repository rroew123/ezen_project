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
public class PaymentVO {
	@NonNull
	private int payNum;
	@NonNull
	private int payment;
	@NonNull
	private int coupNum;
	private String cardInfo;
	private int payType;
}
