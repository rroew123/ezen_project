package kr.co.yangdoll.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yangdoll.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public List<BoardVO> getBoardList() {
		return session.selectList("kr.co.yangdoll.BoardDAO.getBoardList");
	}

	@Override
	public int addBoard(BoardVO vo) {
		return session.insert("kr.co.yangdoll.BoardDAO.addBoard", vo);
	}

	@Override
	public int delBoard(String boardtitle) {
		return session.delete("kr.co.yangdoll.BoardDAO.addBoard", boardtitle);
	}

	@Override
	public int updateBoa(String boardtitle) {
		return session.update("kr.co.yangdoll.BoardDAO.addBoard", boardtitle);
	}

	@Override
	public BoardVO getOneBoa(Long bno) {
		return session.selectOne("kr.co.yangdoll.BoardDAO.getBoard", bno);
	}


}
