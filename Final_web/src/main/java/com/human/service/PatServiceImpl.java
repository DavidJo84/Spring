package com.human.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_boardDAO;
import com.human.dao.IF_patDAO;
import com.human.vo.BoardVO;
import com.human.vo.PageVO;
import com.human.vo.PatVO;
import com.human.vo.SearchVO;

@Service
public class PatServiceImpl implements IF_patService {
	@Inject
	private IF_patDAO pdao;

	@Override
	public void insertOne(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		pdao.insertOne(pvo);

		String[] fname = pvo.getFiles();
		if (fname != null) {
			for (int i = 0; i < fname.length; i++) {
				if(fname[i]!= null) {
					pdao.insertAttach(fname[i]);
				}
			}
		}
	}

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
		String[] fname = pvo.getFiles();
		if (fname != null) {
			for (int i = 0; i < fname.length; i++) {
				if(fname[i]!= null) {
					pdao.insertAttach(fname[i]);
				}
			}
		}
	}

	@Override
	public void outDate(String[] num) throws Exception {
		// TODO Auto-generated method stub
		pdao.outDate(num);
	}
}
