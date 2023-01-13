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
public class MemberVO {
	@NonNull
	private String memId;
	private String email;
	private String memName;
	private String memPwd;
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
	
	public MemberVO(@NonNull String memId, String memPwd) {
		super();	//로그인용
		this.memId = memId;
		this.memPwd = memPwd;
	}
	
	public MemberVO(@NonNull String memId, @NonNull String email, String memPwd) {
		super();	//뭐지 이건?
		this.memId = memId;
		this.email = email;
		this.memPwd = memPwd;
	}
	
	public MemberVO(@NonNull String memId, String email, String memName, String phone) {
		super();	//비밀번호 찾기용
		this.memId = memId;
		this.email = email;
		this.memName = memName;
		this.phone = phone;
	}
	
	public MemberVO(@NonNull String memId, @NonNull String email, String memName, String memPwd, String phone) {
		super();	//회원가입용
		this.memId = memId;
		this.email = email;
		this.memName = memName;
		this.memPwd = memPwd;
		this.phone = phone;
	}
	
	public MemberVO(@NonNull String memId, @NonNull String email, String memName, String memPwd,
			String phone, String birthday, int gender, String address) {
		super();	//회원정보 변경용
		this.memId = memId;
		this.email = email;
		this.memName = memName;
		this.memPwd = memPwd;
		this.phone = phone;
		this.birthday = birthday;
		this.gender = gender;
		this.address = address;
	}

	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", email=" + email + ", memName=" + memName + ", memPwd=" + memPwd + 
				", phone=" + phone +", birthday=" + birthday +", gender=" + gender +
				", address=" + address +", mileage=" + mileage +", totalPay=" + totalPay + "아무거나]";
	}

	

	

	

	


	

	
	
	
	
}


