package co.kr.ezen_project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SearchVO {
	private String searchOption;
	private String keyword;
	private String orby;
}
