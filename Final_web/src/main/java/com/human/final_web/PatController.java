package com.human.final_web;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
//		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
//		System.out.println(mvo.getName());
//		System.out.println(mvo.getPass());
//		msrv.insertOne(mvo);
//		
//		return "home";
//	}

//	@RequestMapping(value = "/boardView", method = RequestMethod.GET)
//	public String boardView(Locale locale, Model model, @ModelAttribute("num") String num) throws Exception {
//		
//		BoardVO bvo = bsrv.selectOne(num);
//		List<String> fList = bsrv.selectAttach(num);
//		model.addAttribute("bvo", bvo);
//		model.addAttribute("fList", fList);
//		return "bbs/bbsView";
//	}
//	
	@RequestMapping(value = "/patDelAll", method = RequestMethod.GET)
	public String delAction(Locale locale, Model model, String[] num) throws Exception {

		psrv.delete(num);
		return "redirect:/";
	}

	@RequestMapping(value = "/searchPat", method = RequestMethod.GET)
	public String searchPat(Locale locale, Model model, SearchVO schvo,@ModelAttribute("pgvo") PageVO pgvo) throws Exception {
		
		if(pgvo.getPage()==null) {//클라이언트가 페이지 정보를 주지 않을때 기본값 1로 셋팅
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
//		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
//		System.out.println(bvo.getName());
//		System.out.println(bvo.getPass());
//		//FileDataUtil의 fileupload메서드를 호출 매개변수로 file을 넘기면 지정한 폴더로 첨부파일 복사됨
//		String[] fileNames = fileDataUtil.fileUpload(file);
//		//넘겨받은 파일명을 BoardVO files에 저장
//		bvo.setFiles(fileNames);
//		bsrv.updateOne(bvo);
//		return "redirect:/boardView?num="+bvo.getNum();
//	}
}