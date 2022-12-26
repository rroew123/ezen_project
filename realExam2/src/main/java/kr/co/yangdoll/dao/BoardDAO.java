package kr.co.yangdoll.dao;

import java.util.List;

import kr.co.yangdoll.vo.BoardVO;

public interface BoardDAO {

	List<BoardVO> getBoardList();

	int addBoard(BoardVO vo);

	int delBoard(String boardtitle);

	int updateBoa(String boardtitle);

	BoardVO getOneBoa(Long bno);

}
