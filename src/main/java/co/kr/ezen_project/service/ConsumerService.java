package co.kr.ezen_project.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import co.kr.ezen_project.vo.Criteria;
import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;

public interface ConsumerService {

	int delFAQAll();
	
	int delFAQ(int faqNum);

	int getFAQCount();

	int addFAQ(FAQVO fvo);

	int udtFAQ(FAQVO fvo);

	FAQVO getFAQOne(int faqNum);

	List<FAQVO> getFAQAll();
	
	

	int delNtcAll();

	int getNtcCount();

	int addNtc(NtcBoardVO nvo1);

	int delNtc(int ntcnum);
	
	int udtNtc(NtcBoardVO nvo3);

	NtcBoardVO getNtcOne(int ntcnum);

	List<NtcBoardVO> getNtcAll();
	
	
	int delQnAAll();

	int getQnACount();

	int addQnA(QnAboardVO qvo1);

	int delQnA(int qnaNum);
	
	int udtQnA(QnAboardVO qvo3);

	QnAboardVO getQnAOne(int QnANum);

	List<QnAboardVO> getQnAAll();
	
	List<QnAboardVO> getQnA_Admin();

	List<QnAboardVO> getQnA_Mem(MemberVO vo);
	
	List<QnAboardVO> getQnA_MemId(String memId);

	void increaseViewCnt(int ntcNum, HttpSession session) throws Exception;
	
	void udtQnA_Ans(QnAboardVO qvo1);
	
	List<QnAboardVO> getListPaging(Criteria cri);
	
	int getTotal();

}
