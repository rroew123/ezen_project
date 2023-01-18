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
public class SangCodeSpecVO {
	private int sangSize;
	private int sangColor;
	@NonNull
	private String sangCode;
	private int remStock;
}
