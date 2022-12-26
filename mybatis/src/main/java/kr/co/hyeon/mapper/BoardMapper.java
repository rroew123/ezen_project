package kr.co.hyeon.mapper;

import java.util.List;

import kr.co.hyeon.board.vo.BoardVO;

public interface BoardMapper {
	int insertBoard(BoardVO vo);
	
	BoardVO selectBoardOne(long boardNum);

	int deleteBoard(long boardNum);
	
	List<BoardVO> selectAll();
}
