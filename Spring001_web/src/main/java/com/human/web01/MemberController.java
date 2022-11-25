package com.human.web01;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

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
		for(int i =0; i < mList.size();i++) {
			System.out.println(mList.get(i).getName());
		}
		model.addAttribute("mList", mList);
		return "member/memberList";
	}
	
	@RequestMapping(value = "/memberOne", method = RequestMethod.GET)
	public String memberOne(Locale locale, Model model, MemberVO mvo) throws Exception {
		System.out.println(mvo.getId()+"컨트롤러");
		
		MemberVO mvo1 = msrv.selectOne(mvo);
		System.out.println(mvo1.getId());
		System.out.println(mvo1.getGrade());
		System.out.println(mvo1.getName());
		System.out.println(mvo1.getPass());
		System.out.println(mvo1.getPoint());
		System.out.println(mvo1.getTel());
		model.addAttribute("mvo", mvo1);
		return "member/memberView";
	}
}
