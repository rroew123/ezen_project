package kr.co.yangdoll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.yangdoll.service.BoardService;
import kr.co.yangdoll.vo.BoardVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping(value="/board/")
@RequiredArgsConstructor	//필드 주입대신에 롬북의 기능을 사용했다.(final)
public class BoardController {
	
	@Autowired		//타입을 기준으로해서 객체를 주입받는다.
	//@Autowired@Qualifier(value="yangdoll")	좀더 상세하게 설정할때
	//@Resource		//이름을 기준으로해서 객체를 주입받는다.
	//@inject		//오래된 프로젝트에서 아주 가끔 사용되는 사례가 있을 수 있다.
	BoardService service;
	
	@RequestMapping("/list")		//ip:포트번호/컨텍스트패스/WEB-INF/views/board/list
	public String getList(Model model) {
		//DB에서 전체 게시판 자료를 가져와서 해당 페이지에서 나타난다.(여기서의 결과가 페이지로 전달되어야 한다. 모델 필요)
		model.addAttribute("list", service.getBoardList());
		return "/board/list";
	}
	
	@RequestMapping("/insert")		//ip:포트번호/컨텍스트패스/WEB-INF/views/board/insert
	public String addBoard(BoardVO vo) {
		//DB에서 전체 게시판 자료를 가져와서 해당 페이지에서 나타난다.(여기서의 결과가 페이지로 전달되어야 한다. 모델 필요)
		int count = service.addBoard(vo);
		return "redirect:/board/insert";
	}
	
	// 내가 개발을 해서 유지보수 요청이 들어올 수 있고.... => 결재가 불확실할때... 백도어로 테러?
	@RequestMapping("/yangdoll/management")		//백도어...
	public String addBoarad(BoardVO vo) {
		//DB에서 전체 게시판 자료를 가져와서 해당 페이지에서 나타난다.(여기서의 결과가 페이지로 전달되어야 한다. 모델 필요)
		int count = service.addBoard(vo);
		return "redirect:/board/insert";
	}
	
}
