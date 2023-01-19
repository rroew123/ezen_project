package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.FAQVO;
import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.NtcBoardVO;
import co.kr.ezen_project.vo.QnAboardVO;

public interface ConsumerDAO {

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

	QnAboardVO getQnAOne(int qnANum);

	List<QnAboardVO> getQnAAll();

	List<QnAboardVO> getQnA_Mem(MemberVO vo);

	void increaseViewCnt(int ntcNum) throws Exception;

	void delQnAMem(String memId);

	List<QnAboardVO> getQnA_Admin();

	void udtQnA_Ans(QnAboardVO qvo1);
	
}
