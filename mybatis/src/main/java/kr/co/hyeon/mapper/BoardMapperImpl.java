package kr.co.hyeon.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.hyeon.board.vo.BoardVO;

@Repository
public class BoardMapperImpl implements BoardMapper {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return session.update("BoardNS.insertBoard", vo);
	}

	@Override
	public BoardVO selectBoardOne(long boardNum) {
		return session.selectOne("BoardNS.selectBoardOne", boardNum);
	}
	
	@Override
	public int deleteBoard(long boardNum) {
		return session.delete("BoardNS.delBoard", boardNum);
	}

	@Override
	public List<BoardVO> selectAll() {
		return session.selectList("BoardNS.selectAll");
	}

}
