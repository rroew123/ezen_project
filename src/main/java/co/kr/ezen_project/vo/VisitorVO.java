package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class VisitorVO {
	@NonNull
	private String visitDate;
	private int visitMen;
	private int visitWom;
	private int total;
}
