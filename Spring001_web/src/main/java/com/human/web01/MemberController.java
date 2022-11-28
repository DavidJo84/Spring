package com.human.web01;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.IF_memberService;
import com.human.vo.MemberVO;

@Controller
public class MemberController {
	@Inject
	private IF_memberService msrv;
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Locale locale, Model model) {
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction(Locale locale, Model model, MemberVO mvo) throws Exception {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		msrv.insertOne(mvo);
		return "home";
	}
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) throws Exception {
		List<MemberVO> mList = msrv.selectAll();
		model.addAttribute("mList", mList);
		return "member/memberList";
	}
	
	@RequestMapping(value = "/memberOne", method = RequestMethod.GET)
	public String memberOne(Locale locale, Model model, MemberVO mvo) throws Exception {
		MemberVO mvo1 = msrv.selectOne(mvo);
		model.addAttribute("mvo", mvo1);
		return "member/memberView";
	}
	
	@RequestMapping(value = "/modyMember", method = RequestMethod.GET)
	public String modyMember(Locale locale, Model model, MemberVO mvo) throws Exception {
		MemberVO mvo1 = msrv.selectOne(mvo);
		model.addAttribute("mvo", mvo1);
		return "member/modyView";
	}
	@RequestMapping(value = "/modyAction", method = RequestMethod.POST)
	public String modyAction(Locale locale, Model model, MemberVO mvo) throws Exception {
		msrv.updateOne(mvo);
		return "redirect:/memberList";
	}
	
	@RequestMapping(value = "/delMember", method = RequestMethod.GET)
	public String modyMember(Locale locale, Model model, String id) throws Exception {
		msrv.deleteOne(id);
		return "redirect:/memberList";
	}
	
}
