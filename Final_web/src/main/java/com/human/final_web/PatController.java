package com.human.final_web;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.service.IF_patService;
import com.human.vo.PageVO;
import com.human.vo.PatVO;
import com.human.vo.SearchVO;

@Controller
public class PatController {
	@Inject
	private IF_patService psrv;


	@RequestMapping(value = "/addPat", method = RequestMethod.POST)
	public String addPat(Locale locale, Model model, PatVO pvo) throws Exception {
		pvo.setBirthday(pvo.getYear()+pvo.getMonth()+pvo.getDay());
		System.out.println(pvo.getAddress());
		System.out.println(pvo.getAge());
		System.out.println(pvo.getBirthday());
		System.out.println(pvo.getDay());
		System.out.println(pvo.getDepart());
		System.out.println(pvo.getDepart2());
		System.out.println(pvo.getDisease());
		System.out.println(pvo.getEvening());
		System.out.println(pvo.getIndate());
		System.out.println(pvo.getMedicine());
		System.out.println(pvo.getMemo());
		System.out.println(pvo.getMonth());
		System.out.println(pvo.getMor());
		System.out.println(pvo.getName());
		System.out.println(pvo.getNo());
		System.out.println(pvo.getNoon());
		System.out.println(pvo.getPt());
		System.out.println(pvo.getRoom());
		System.out.println(pvo.getSex());
		System.out.println(pvo.getYear());
		
		psrv.insertPat(pvo);
		psrv.insertRecord(pvo);
		return "redirect:/";
	}

//	@RequestMapping(value = "/wrForm", method = RequestMethod.GET)
//	public String wrForm(Locale locale, Model model) {
//
//		
//		return "bbs/wrForm";
//	}

	@RequestMapping(value = "/outAllPat", method = RequestMethod.GET)
	public String bbsList(Locale locale, Model model, String[] num) throws Exception {

		psrv.outDate(num);
		return "redirect:/";
	}

//	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
//	public String joinForm(Locale locale, Model model) {
//		
//		return "bbs/joinForm";
//	}

//	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
//	public String joinAction(Locale locale, Model model, MemberVO mvo) throws Exception {
//		//????????? ???????????? ??????????????? ????????? ?????? ????????? ????????? ???????????? getter, setter??? ????????? ??????.->????????????
//		System.out.println(mvo.getName());
//		System.out.println(mvo.getPass());
//		msrv.insertOne(mvo);
//		
//		return "home";
//	}
	@ResponseBody
	@RequestMapping(value = "/viewPat", method = RequestMethod.POST)
	public PatVO viewPat(Locale locale, Model model, @ModelAttribute("no") String no) throws Exception {
		System.out.println(no);
		PatVO pvo = psrv.selectOne(no);
		
		
		return pvo;
	}
//	
	@RequestMapping(value = "/patDelAll", method = RequestMethod.GET)
	public String delAction(Locale locale, Model model, String[] num) throws Exception {

		psrv.delete(num);
		return "redirect:/";
	}

	@RequestMapping(value = "/searchPat", method = RequestMethod.GET)
	public String searchPat(Locale locale, Model model, SearchVO schvo,@ModelAttribute("pgvo") PageVO pgvo) throws Exception {
		
		if(pgvo.getPage()==null) {//?????????????????? ????????? ????????? ?????? ????????? ????????? 1??? ??????
			pgvo.setPage(1);
		}
		System.out.println(pgvo.getPage());
		int tatalpageCnt = psrv.countBoard(schvo);
		pgvo.setTotalCount(tatalpageCnt);
		schvo.setStartNo(pgvo.getStartNo());
		schvo.setEndNo(pgvo.getEndNo());
		List<PatVO> pList = psrv.selectAll(schvo);
		model.addAttribute("pList", pList);
		model.addAttribute("pgvo", pgvo);
		
		return "home";
	}
//	
//	@RequestMapping(value = "/modyForm", method = RequestMethod.GET)
//	public String modyForm(Locale locale, Model model, @ModelAttribute("num") String num) throws Exception {
//		
//		BoardVO bvo = bsrv.selectOne(num);
//		model.addAttribute("bvo", bvo);
//		return "bbs/modyForm";
//	}
//	
//	@RequestMapping(value = "/modyAction", method = RequestMethod.POST)
//	public String modyAction(Locale locale, Model model, BoardVO bvo, MultipartFile[] file) throws Exception {
//		//????????? ???????????? ??????????????? ????????? ?????? ????????? ????????? ???????????? getter, setter??? ????????? ??????.->????????????
//		System.out.println(bvo.getName());
//		System.out.println(bvo.getPass());
//		//FileDataUtil??? fileupload???????????? ?????? ??????????????? file??? ????????? ????????? ????????? ???????????? ?????????
//		String[] fileNames = fileDataUtil.fileUpload(file);
//		//???????????? ???????????? BoardVO files??? ??????
//		bvo.setFiles(fileNames);
//		bsrv.updateOne(bvo);
//		return "redirect:/boardView?num="+bvo.getNum();
//	}
}