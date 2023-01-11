package co.kr.ezen_project.dao;

import java.util.List;

import co.kr.ezen_project.vo.SangCodeSpecVO;
import co.kr.ezen_project.vo.SangpumVO;

public interface SangpumDAO {

	List<SangpumVO> getSangAll();

	SangpumVO getSang(String sangCode);

	int addSang(SangpumVO vo);

	int delSang(SangpumVO vo);

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

	


	

	

	

	


}
