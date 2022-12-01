package com.human.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_boardDAO;
import com.human.vo.BoardVO;
import com.human.vo.PageVO;

@Service
public class BoardServiceImpl implements IF_boardService {
	@Inject
	private IF_boardDAO bdao;

	@Override
	public void insertOne(BoardVO bvo) throws Exception {
		// TODO Auto-generated method stub
		bdao.insertOne(bvo);

		String[] fname = bvo.getFiles();
		if (fname != null) {
			for (int i = 0; i < fname.length; i++) {
				if(fname[i]!= null) {
					bdao.insertAttach(fname[i]);
				}
			}
		}
	}

	@Override
	public List<BoardVO> selectAll(PageVO pvo) throws Exception {
		// TODO Auto-generated method stub
		return bdao.selectAll(pvo);
	}

	@Override
	public int countBoard() throws Exception {
		// TODO Auto-generated method stub
		return bdao.countBoard();
	}

	@Override
	public BoardVO selectOne(String num) throws Exception {
		// TODO Auto-generated method stub
		return bdao.selectOne(num);
	}

	@Override
	public List<String> selectAttach(String num) throws Exception {
		// TODO Auto-generated method stub
		return bdao.selectAttach(num);
	}

	@Override
	public void delete(String num) throws Exception {
		// TODO Auto-generated method stub
		bdao.delete(num);
	}

	@Override
	public void updateOne(BoardVO bvo) throws Exception {
		// TODO Auto-generated method stub
		bdao.modyOne(bvo);
		String[] fname = bvo.getFiles();
		if (fname != null) {
			for (int i = 0; i < fname.length; i++) {
				if(fname[i]!= null) {
					bdao.insertAttach(fname[i]);
				}
			}
		}
	}
	
	

}
