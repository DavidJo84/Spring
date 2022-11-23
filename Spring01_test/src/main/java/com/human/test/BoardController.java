package com.human.test;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.testvo.TboardVO;

@Controller
public class BoardController {

	@RequestMapping(value = "/addForm", method = RequestMethod.GET)
	public String addForm(Locale locale, Model model) {
		return "addFormView";
	}
	
	@RequestMapping(value = "/addAction", method = RequestMethod.GET)
	public String addAction(Locale locale, Model model, TboardVO tvo) {
		
		model.addAttribute("tvo", tvo);
		return "wrChk";
	}
}
