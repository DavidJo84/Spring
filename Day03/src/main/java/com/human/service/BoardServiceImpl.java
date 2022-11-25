package com.human.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_boardDAO;
import com.human.vo.BoardVO;

@Service
public class BoardServiceImpl implements IF_boardService {
	@Inject
	private IF_boardDAO bdao;
	@Override
	public void insertOne(BoardVO bvo) throws Exception {
		// TODO Auto-generated method stub
		bdao.insertOne(bvo);
		
	}
	@Override
	public List<BoardVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return bdao.selectAll();
	}

}
