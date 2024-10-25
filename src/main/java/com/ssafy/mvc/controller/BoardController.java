package com.ssafy.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.mvc.model.dto.Board;
import com.ssafy.mvc.model.service.BoardService;

@Controller
public class BoardController {

	private BoardService boardService;

//	@Autowired // 생성자가 하나 뿐이라 쓰든 말든 상관없다
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@GetMapping("/")
	public String rootRedirect(Model model) {
		model.addAttribute("pageTitle", "게시판 목록");
		model.addAttribute("pageClass", "index-page");
		return "/board/index";
	}

	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("pageTitle", "게시판 목록");
		model.addAttribute("pageClass", "index-page");
		return "/board/index";
	}

	@GetMapping("/list")
	public String list(Model model) {
		// 서비스를 통해서 게시글들을 가져와야한다
		List<Board> boards = boardService.getBoardList();
		model.addAttribute("boards", boards);
		model.addAttribute("pageTitle", "게시판 목록");
		model.addAttribute("pageClass", "list-page");

		return "/board/list";
	}

	@GetMapping("/writeform")
	public String writeform(Model model) {
		model.addAttribute("pageTitle", "게시글 작성");
		model.addAttribute("pageClass", "writeform-page");
		return "/board/writeform";
	}

	@PostMapping("/write")
	public String write(@ModelAttribute Board board) {
		boardService.writeBoard(board);
		return "redirect:list";
	}

	@GetMapping("/detail")
	public String detail(@RequestParam("id") int id, Model model) {
		Board board = boardService.readBoard(id);
		model.addAttribute(board);
		model.addAttribute("pageTitle", "게시글 상세보기");
		model.addAttribute("pageClass", "detail-page");
		return "/board/detail";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		boardService.removeBoard(id);
		return "redirect:list";
	}
	
	@GetMapping("/updateform")
	public String updateform(@RequestParam("id") int id, Model model) {
		// 게시글을 하나 가지고 와서 updateform으로 넘겨야한다.
		model.addAttribute("board", boardService.readBoard(id));
		// 조회수가 올라가는 문제 발생. 실제 구현을 할 때는 게시글을 생으로 가져오는 메서드를 따로 만들기
		model.addAttribute("pageTitle", "게시판 수정");
		model.addAttribute("pageClass", "updateform-page");
		return "/board/updateform";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute Board board) {
		boardService.modifyBoard(board);
		return "redirect:detail?id="+board.getId();
	}

}
