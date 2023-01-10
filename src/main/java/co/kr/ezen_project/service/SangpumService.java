package co.kr.ezen_project.service;

import java.util.List;

import co.kr.ezen_project.vo.SangpumVO;

public interface SangpumService {
	
	List<Object> getSangList();
	
	SangpumVO getSang(String sangCode);
	
	int addSang(SangpumVO vo);
	
	int delSang(SangpumVO vo);
	
	int updSang(SangpumVO vo);
}
