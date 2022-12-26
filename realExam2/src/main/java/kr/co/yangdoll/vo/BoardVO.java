package kr.co.yangdoll.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardVO {
	private Long bno;
	private String title, content, writer;
	private Date regdate, updatedate;
}
