package com.human.cafe;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.vo.BoardVO;

@Controller
public class BbsController {
	
	@RequestMapping(value = "/viewForm", method = RequestMethod.GET)
	public String test1(Locale locale, Model model) {
//		System.out.println(name);
//		model.addAttribute("sss", name);
		
		return "wrForm";
	}
	
	@RequestMapping(value = "/wrAction", method = RequestMethod.POST)
	public String wrAction(Locale locale, Model model, BoardVO bvo) {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		System.out.println(bvo.getName());
		System.out.println(bvo.getPass());
//		model.addAttribute("sss", name);
		
		return "wrForm";
	}
}
