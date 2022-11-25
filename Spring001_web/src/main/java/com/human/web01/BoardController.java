package com.human.web01;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.IF_boardService;
import com.human.vo.BoardVO;

@Controller
public class BoardController {
	@Inject
	private IF_boardService bsrv;
	
	
	
	@RequestMapping(value = "/wrAction", method = RequestMethod.POST)
	public String wrAction(Locale locale, Model model, BoardVO bvo) throws Exception {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		System.out.println(bvo.getName());
		System.out.println(bvo.getPass());
		bsrv.insertOne(bvo);
		
		return "redirect:/boardList";
	}
	
	@RequestMapping(value = "/wrForm", method = RequestMethod.GET)
	public String wrForm(Locale locale, Model model) {

		
		return "board/wrForm";
	}
	
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String bbsList(Locale locale, Model model) throws Exception {

		List<BoardVO> bList = bsrv.selectAll();
		model.addAttribute("bList", bList);
		return "board/boardList";
	}
	
	
}
