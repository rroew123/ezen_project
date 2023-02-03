package co.kr.ezen_project.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaymentVO {
	private int payNum;
	private int payment;
	private int coupNum;
	private String cardInfo;
	private String memId;
	private int payType;
	private Date payDate;
}
