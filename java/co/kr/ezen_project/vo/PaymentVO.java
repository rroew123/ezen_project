package co.kr.ezen_project.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PaymentVO {
	private int payNum;
	private int payment;
	private int coupNum;
	private String cardInfo;
	private int payType;
}
