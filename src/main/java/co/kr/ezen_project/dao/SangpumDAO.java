package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.MemberVO;
import co.kr.ezen_project.vo.SangCateVO;
import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;
import co.kr.ezen_project.vo.SearchVO;

public interface SangpumDAO {

	List<SangpumVO> getSangAll();

	SangpumVO getSang(String sangCode);

	int addSang(SangpumVO vo);

	int delSang(String sangCode);

	int delSangAll();

	int updSang(SangpumVO vo);
	
	List<SangCodeSpecVO> getSCSAll();
	
	SangCodeSpecVO getSCS(String sangCode);
	
	int addSCS(SangCodeSpecVO vo);
	
	int delSCS(SangCodeSpecVO vo);
	
	int delSCSAll();
	
	int updSCS(SangCodeSpecVO vo);

	List<SangCodeSpecVO> getColor(String sangCode);

	List<SangCodeSpecVO> getSize(SangCodeSpecVO vo);

	List<SangpumVO> getSangRat(String sangCode);

	List<SangpumVO> getSaleRat(String sangCode);

	List<SangpumVO> getSoldOut(String sangCode);

	List<SangpumVO> getSangCate(SearchVO vo);

	List<SangpumVO> getSangAdmin(String sangCode);
	
	List<SangpumVO> searchAll(String searchOption, String keyword);

	public int countArticle(String searchOption, String keyword);
	
	List<SangpumVO> getSangOrder();

	List<SangCateVO> getSC_cateName(SearchVO vo);


	

	

	

	


}
