package co.kr.ezen_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.ezen_project.dao.ConsumerDAO;
import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;

@Service
public class ConsumerServiceImpl implements ConsumerService {
	
	@Autowired
	ConsumerDAO dao;
	
	@Override
	public int delFAQAll() {
		return dao.delFAQAll();
	}

	@Override
	public int delFAQ(FAQVO fvo) {
		return dao.delFAQ(fvo);
	}

	@Override
	public int getFAQCount() {
		return dao.getFAQCount();
	}

	@Override
	public int addFAQ(FAQVO fvo) {
		return dao.addFAQ(fvo);
	}

	@Override
	public int udtFAQ(FAQVO fvo) {
		return dao.udtFAQ(fvo);
	}

	@Override
	public FAQVO getFAQOne(String fAQCat) {
		return dao.getFAQOne(fAQCat);
	}

	@Override
	public List<FAQVO> getFAQAll() {
		return dao.getFAQAll();
	}

	@Override
	public int delNtcAll() {
		return dao.delNtcAll();
	}

	@Override
	public int getNtcCount() {
		return dao.getNtcCount();
	}

	@Override
	public int addNtc(NtcBoardVO nvo1) {
		return dao.addNtc(nvo1);
	}

	@Override
	public int delNtc(NtcBoardVO nvo1) {
		return dao.delNtc(nvo1);
	}

	@Override
	public int udtNtc(NtcBoardVO nvo3) {
		return dao.udtNtc(nvo3);
	}

	@Override
	public NtcBoardVO getNtcOne(String ntcTitle) {
		return dao.getNtcOne(ntcTitle);
	}

	@Override
	public List<NtcBoardVO> getNtcAll() {
		return dao.getNtcAll();
	}

	@Override
	public int delQnAAll() {
		return dao.delQnAAll();
	}

	@Override
	public int getQnACount() {
		return dao.getQnACount();
	}

	@Override
	public int addQnA(QnAboardVO qvo1) {
		return dao.addQnA(qvo1);
	}

	@Override
	public int delQnA(QnAboardVO qvo1) {
		return dao.delQnA(qvo1);
	}

	@Override
	public int udtQnA(QnAboardVO qvo3) {
		return dao.udtQnA(qvo3);
	}

	@Override
	public QnAboardVO getQnAOne(int QnANum) {
		return dao.getQnAOne(QnANum);
	}

	@Override
	public List<QnAboardVO> getQnAAll() {
		return dao.getQnAAll();
	}

	@Override
	public List<QnAboardVO> getQnAmemId(String memid) {
		return dao.getQnAmemId(memid);
	}

}
