package com.human.final_web;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.human.service.IF_boardService;
import com.human.service.IF_memberService;
import com.human.util.FileDataUtil;
import com.human.vo.BoardVO;
import com.human.vo.MemberVO;
import com.human.vo.PageVO;

@Controller
public class BbsController {
	@Inject
	private IF_boardService bsrv;
	
	@Inject
	private IF_memberService msrv;
	
	@Inject
	private FileDataUtil fileDataUtil;
	
	@RequestMapping(value = "/wrAction", method = RequestMethod.POST)
	public String wrAction(Locale locale, Model model, BoardVO bvo, MultipartFile[] file) throws Exception {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		System.out.println(bvo.getName());
		System.out.println(bvo.getPass());
		//FileDataUtil의 fileupload메서드를 호출 매개변수로 file을 넘기면 지정한 폴더로 첨부파일 복사됨
		String[] fileNames = fileDataUtil.fileUpload(file);
		//넘겨받은 파일명을 BoardVO files에 저장
		bvo.setFiles(fileNames);
		bsrv.insertOne(bvo);
		return "redirect:/bbsList";
	}
	
	@RequestMapping(value = "/wrForm", method = RequestMethod.GET)
	public String wrForm(Locale locale, Model model) {

		
		return "bbs/wrForm";
	}
	
	@RequestMapping(value = "/bbsList", method = RequestMethod.GET)
	public String bbsList(Locale locale, Model model, @ModelAttribute("pvo") PageVO pvo) throws Exception {
		System.out.println("bbsList왔다.");
		if(pvo.getPage()==null) {//클라이언트가 페이지 정보를 주지 않을때 기본값 1로 셋팅
			pvo.setPage(1);
		}
		int tatalpageCnt = bsrv.countBoard();
		pvo.setTotalCount(tatalpageCnt);
		List<BoardVO> bList = bsrv.selectAll(pvo);
		model.addAttribute("bList", bList);
		model.addAttribute("pvo", pvo);
		return "bbs/bbsList";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Locale locale, Model model) {
		
		return "bbs/joinForm";
	}
	
	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction(Locale locale, Model model, MemberVO mvo) throws Exception {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		System.out.println(mvo.getName());
		System.out.println(mvo.getPass());
		msrv.insertOne(mvo);
		
		return "home";
	}
	
	@RequestMapping(value = "/boardView", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model, @ModelAttribute("num") String num) throws Exception {
		
		BoardVO bvo = bsrv.selectOne(num);
		List<String> fList = bsrv.selectAttach(num);
		model.addAttribute("bvo", bvo);
		model.addAttribute("fList", fList);
		return "bbs/bbsView";
	}
	
	@RequestMapping(value = "/delAction", method = RequestMethod.GET)
	public String delAction(Locale locale, Model model, @ModelAttribute("num") String num) throws Exception {
		
		bsrv.delete(num);
		return "redirect:/bbsList";
	}
	
	@RequestMapping(value = "/modyForm", method = RequestMethod.GET)
	public String modyForm(Locale locale, Model model, @ModelAttribute("num") String num) throws Exception {
		
		BoardVO bvo = bsrv.selectOne(num);
		model.addAttribute("bvo", bvo);
		return "bbs/modyForm";
	}
	
	@RequestMapping(value = "/modyAction", method = RequestMethod.POST)
	public String modyAction(Locale locale, Model model, BoardVO bvo, MultipartFile[] file) throws Exception {
		//객체로 받을때는 파라미터의 이름과 객체 변수의 이름이 일치하고 getter, setter가 있어야 한다.->자동매핑
		System.out.println(bvo.getName());
		System.out.println(bvo.getPass());
		//FileDataUtil의 fileupload메서드를 호출 매개변수로 file을 넘기면 지정한 폴더로 첨부파일 복사됨
		String[] fileNames = fileDataUtil.fileUpload(file);
		//넘겨받은 파일명을 BoardVO files에 저장
		bvo.setFiles(fileNames);
		bsrv.updateOne(bvo);
		return "redirect:/boardView?num="+bvo.getNum();
	}
}