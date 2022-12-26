package kr.co.hyeon.board.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@NoArgsConstructor
public class BoardVO {		//필수입력이기는 하지만 사용자가 입력하지 않음=> dbms의 시퀀스가 입력
	private long boardNum;
	@NonNull
	private String boardTitle;
	@NonNull
	private String irum;
	@NonNull
	private String boardpwd;
	private String boardContent;
	private String regidate;
}
