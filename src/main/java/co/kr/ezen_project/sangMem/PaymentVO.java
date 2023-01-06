package co.kr.ezen_project.sangMem;

import co.kr.ezen_project.member.MemberVO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class PaymentVO {
	@NonNull
	private int payNum;
	@NonNull
	private int payment;
	@NonNull
	private int coup_seq;
}
