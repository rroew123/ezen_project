package co.kr.ezen_project.member;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class MemberVO {
	@NonNull
	private String memId;
	@NonNull
	private String email;
	@NonNull
	private String memName;
	@NonNull
	private String memPwd;
	@NonNull
	private String phone;
	private String birthday;
	private int gender;
	private String address;
	private int membership;
	private int mileage;
	private String regDate;
	private String lastDate;
	private int markAgree;
	private int totalPay;
}
