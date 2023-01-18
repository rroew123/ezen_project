package co.kr.ezen_project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;

@Repository
public class ConsumerDAOImpl implements ConsumerDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public int delFAQAll() {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delFAQAll");
	}

	@Override
	public int delFAQ(FAQVO fvo) {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delFAQ", fvo);
	}

	@Override
	public int addFAQ(FAQVO fvo) {
		return session.insert("co.kr.ezen_project.dao.ConsumerDAO.addFAQ", fvo);
	}

	@Override
	public int udtFAQ(FAQVO fvo) {
		return session.insert("co.kr.ezen_project.dao.ConsumerDAO.udtFAQ", fvo);
	}
	
	@Override
	public int getFAQCount() {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getFAQCount");
	}
	
	@Override
	public FAQVO getFAQOne(String fAQTitle) {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getFAQOne", fAQTitle);
	}

	@Override
	public List<FAQVO> getFAQAll() {
		return session.selectList("co.kr.ezen_project.dao.ConsumerDAO.getFAQAll");
	}

	@Override
	public int delNtcAll() {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delNtcAll");
	}
	
	@Override
	public int delNtc(NtcBoardVO nvo1) {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delNtc", nvo1);
	}

	@Override
	public int addNtc(NtcBoardVO nvo1) {
		return session.insert("co.kr.ezen_project.dao.ConsumerDAO.addNtc",nvo1);
	}

	@Override
	public int udtNtc(NtcBoardVO nvo3) {
		return session.update("co.kr.ezen_project.dao.ConsumerDAO.udtNtc", nvo3);
	}

	@Override
	public int getNtcCount() {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getNtcCount");
	}
	
	@Override
	public NtcBoardVO getNtcOne(String ntcTitle) {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getNtcOne", ntcTitle);
	}

	@Override
	public List<NtcBoardVO> getNtcAll() {
		return session.selectList("co.kr.ezen_project.dao.ConsumerDAO.getNtcAll");
	}

	@Override
	public int delQnAAll() {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delQnAAll");
	}
	
	@Override
	public int delQnA(int qnaNum) {
		return session.delete("co.kr.ezen_project.dao.ConsumerDAO.delQnA", qnaNum);
	}

	@Override
	public int addQnA(QnAboardVO qvo1) {
		return session.insert("co.kr.ezen_project.dao.ConsumerDAO.addQnA", qvo1);
	}

	@Override
	public int udtQnA(QnAboardVO qvo3) {
		return session.update("co.kr.ezen_project.dao.ConsumerDAO.udtQnA", qvo3);
	}

	@Override
	public int getQnACount() {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getQnACount");
	}

	@Override
	public QnAboardVO getQnAOne(int qnANum) {
		return session.selectOne("co.kr.ezen_project.dao.ConsumerDAO.getQnAOne", qnANum);
	}

	@Override
	public List<QnAboardVO> getQnAAll() {
		return session.selectList("co.kr.ezen_project.dao.ConsumerDAO.getQnAAll");
	}

	@Override
	public List<QnAboardVO> getQnAmemId(String memid) {
		return session.selectList("co.kr.ezen_project.dao.ConsumerDAO.getQnAmemId", memid);
	}
	
	
}
