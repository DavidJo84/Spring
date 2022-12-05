package com.human.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_patDAO;
import com.human.vo.BoardVO;
import com.human.vo.PatVO;
import com.human.vo.SearchVO;

@Service
public class PatServiceImpl implements IF_patService {
	@Inject
	private IF_patDAO pdao;

	@Override
	public List<PatVO> selectAll(SearchVO schvo) throws Exception {
		// TODO Auto-generated method stub
			if(schvo.getDepart()!=null&&schvo.getDepart().equals("한방")){
				String depart = schvo.getDepart()+schvo.getDepart2();
				schvo.setDepart(depart);
			}
		return pdao.selectAll(schvo);
	}

	@Override
	public int countBoard(SearchVO schvo) throws Exception {
		// TODO Auto-generated method stub
		return pdao.countBoard(schvo);
	}

	@Override
	public BoardVO selectOne(String no) throws Exception {
		// TODO Auto-generated method stub
		return pdao.selectOne(no);
	}

	@Override
	public List<String> selectAttach(String no) throws Exception {
		// TODO Auto-generated method stub
		return pdao.selectAttach(no);
	}

	@Override
	public void delete(String[] no) throws Exception {
		// TODO Auto-generated method stub
		pdao.delete(no);
	}

	@Override
	public void updateOne(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		pdao.modyOne(pvo);
	}

	@Override
	public void outDate(String[] num) throws Exception {
		// TODO Auto-generated method stub
		pdao.outDate(num);
	}

	@Override
	public void insertPat(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		pdao.insertPat(pvo);
	}

	@Override
	public void insertRecord(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		pdao.insertRecord(pvo);
	}
}
