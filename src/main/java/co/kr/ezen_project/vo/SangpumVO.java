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
public class SangpumVO {
	@NonNull
	private String sangCode;
	@NonNull
	private int price;
	private String sangName;
	private int typeOne;
	private int typeTwo;
	private int typeThree;
	private int iniStock;
	private int remStock;
	private double rating;
	private double totalRat;
	private int ratingCnt;
	private int saleRat;
}
