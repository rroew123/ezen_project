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
	private int price;
	private String sangName;
	private int typeOne;
	private int typeTwo;
	private int typeThree;
	private int soldCnt;
	private int remStock;
	private double rating;
	private double totalRat;
	private int ratingCnt;
	private int saleRat;
	private String SangCate;
	private String orby;
	
	
	public SangpumVO(@NonNull String sangCode, int price, String sangName, int typeOne, int typeTwo,
			int typeThree, int soldCnt, int remStock, double rating, double totalRat, int ratingCnt, int saleRat) {
		super();
		this.sangCode = sangCode;
		this.price = price;
		this.sangName = sangName;
		this.typeOne = typeOne;
		this.typeTwo = typeTwo;
		this.typeThree = typeThree;
		this.soldCnt = soldCnt;
		this.remStock = remStock;
		this.rating = rating;
		this.totalRat = totalRat;
		this.ratingCnt = ratingCnt;
		this.saleRat = saleRat;
	}


	public SangpumVO(String sangCate, String ordy) {
		super();
		this.SangCate = sangCate;
		this.orby = ordy;
	}
	
	
	
}
