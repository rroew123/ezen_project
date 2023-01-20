package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.ConsumerDAO;
import co.kr.ezen_project.dao.MemberDAO;
import co.kr.ezen_project.dao.SangMemDAO;
import co.kr.ezen_project.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	@Autowired
	ConsumerDAO Cdao;
	@Autowired
	SangMemDAO Sdao;
	
	@Override
	public int addMem(MemberVO vo) {
		return dao.addMem(vo);
	}
	@Override
	public int getMemCount() {
		return dao.getMemCount();
	}
	@Override
	public int delMemAll() {
		return dao.delMemAll();
	}
	@Override
	public int delMem(String memId) {
		/* Sdao.delPayment_Mem(memId); */
		/* Sdao.delReview_Mem(memId); */
		Sdao.delSM_Mem(memId);
		Sdao.delCouponMem(memId);
		Cdao.delQnAMem(memId);
		return dao.delMem(memId);
	}
	@Override
	public MemberVO getMemOne(String memId) {
		return dao.getMemOne(memId);
	}
	@Override
	public List<MemberVO> getMemAll() {
		return dao.getMemAll();
	}
	@Override
	public int udtMem(MemberVO vo) {
		return dao.udtMem(vo);
	}
	@Override
	public int udtMemTP(MemberVO vo) {
		return dao.udtMemTP(vo);
	}
	@Override
	public int udtMemAdmin(MemberVO vo) {
		return dao.udtMemAdmin(vo);
	}
	@Override
	public String findId(String email) {
		return dao.findId(email);
	}
	@Override
	public String findPwd(MemberVO vo) {
			return dao.findPwd(vo);
	}
	@Override
	public int udtMemPwd(MemberVO vo) {
		return dao.udtMemPwd(vo);
	}
	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return dao.loginCheck(vo);
	}
	@Override
	public List<MemberVO> getMemAdmin(String memCate) {
		return dao.getMemAdmin(memCate);
	}
	
	@Override
	public List<MemberVO> searchAll(String searchOption, String keyword){
	   return dao.searchAll(searchOption, keyword);
	   }
	@Override
	public int countArticle(String searchOption, String keyword){
	   return dao.countArticle(searchOption, keyword);
	   }

}
