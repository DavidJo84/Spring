package com.human.dao;

import java.util.List;

import com.human.vo.BoardVO;
import com.human.vo.PageVO;

public interface IF_boardDAO {
	public void insertOne(BoardVO bvo) throws Exception;
	public List<BoardVO> selectAll(PageVO pvo) throws Exception;
	public int countBoard() throws Exception;
	
}
