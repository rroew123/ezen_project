package kr.co.yangdoll;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.yangdoll.service.MemberService;
import kr.co.yangdoll.vo.MemberVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberTest {
	@Autowired
	MemberService service;
	
	@Test
	public void getMemberTest() {
		MemberVO vo = service.getMember("aaaa");
		assertNotNull(vo);
	}
	
	@Test
	public void addMember() {
		MemberVO vo = new MemberVO();
		vo.setMemId("yangdoll");
		vo.setMemName("양");
		vo.setMemPwd("1234doll");
		vo.setPhone("0101523552151");
		int result = service.addMember(vo);
		assertNotEquals(result, 0);
		MemberVO resultVO = service.getMember(vo.getMemId());
		checkVO(vo, resultVO);
		service.delMember(vo.getMemId());
	}

	private void checkVO(MemberVO vo, MemberVO resultVO) {
		assertEquals(vo.getMemId(), resultVO.getMemId());
		assertEquals(vo.getMemName(), resultVO.getMemName());
		assertEquals(vo.getMemPwd(), resultVO.getMemPwd());
		assertEquals(vo.getPhone(), resultVO.getPhone());
		
	}
	
	
}
