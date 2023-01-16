package co.kr.ezen_project.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ReviewVO {
	private int orderNum;
	private double indiRat;
	private String revCntxt;
}
