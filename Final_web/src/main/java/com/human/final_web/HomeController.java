package com.human.final_web;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.IF_memberService;
import com.human.service.IF_patService;
import com.human.vo.PageVO;
import com.human.vo.PatVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Inject
	private IF_patService psrv;
	
	@Inject
	private IF_memberService msrv;
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String bbsList(Locale locale, Model model, @ModelAttribute("pgvo") PageVO pgvo) throws Exception {
		if(pgvo.getPage()==null) {//클라이언트가 페이지 정보를 주지 않을때 기본값 1로 셋팅
			pgvo.setPage(1);
		}
		int tatalpageCnt = psrv.countBoard();
		pgvo.setTotalCount(tatalpageCnt);
		List<PatVO> pList = psrv.selectAll(pgvo);
		model.addAttribute("pList", pList);
		model.addAttribute("pgvo", pgvo);
		return "home";
	}
	
}
