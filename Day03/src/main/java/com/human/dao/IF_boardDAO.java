package com.human.dao;

import java.util.List;

import com.human.vo.BoardVO;

public interface IF_boardDAO {
	public void insertOne(BoardVO bvo) throws Exception;
	public List<BoardVO> selectAll() throws Exception;
	
}
