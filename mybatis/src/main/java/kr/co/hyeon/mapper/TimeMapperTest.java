package kr.co.hyeon.mapper;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.hyeon.board.vo.BoardVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TimeMapperTest {
	
	@Autowired
	private BoardMapper dao;
	
	@Test
	public void mybatisTest() {
		System.out.println(dao.selectBoardOne(4));
	}
	
	@Test
	@Ignore
	public void delBoardTest() {
		dao.deleteBoard(3);
	}
	
	@Test
	public void selectAllTest() {
		List<BoardVO> list = dao.selectAll();
		for(BoardVO vo : list) {
			System.out.println(vo);
		}
		
	}
}
