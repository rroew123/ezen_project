package co.kr.ezen_project.member;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class CardInfoVO {
	@NonNull
	private String memId;
	private String cardInfo;
}
