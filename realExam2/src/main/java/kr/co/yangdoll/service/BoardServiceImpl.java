package kr.co.yangdoll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yangdoll.dao.BoardDAO;
import kr.co.yangdoll.vo.BoardVO;

@Repository
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;
	
	@Override
	public List<BoardVO> getBoardList() {
		return dao.getBoardList();
	}

	@Override
	public int addBoard(BoardVO vo) {
		return dao.addBoard(vo);
	}

	@Override
	public int delBoard(String boardtitle) {
		return dao.delBoard(boardtitle);
	}

	@Override
	public int updateBoa(String boardtitle) {
		return dao.updateBoa(boardtitle);
	}

	@Override
	public BoardVO getOneBoa(Long bno) {
		return dao.getOneBoa(bno);
	}


}
