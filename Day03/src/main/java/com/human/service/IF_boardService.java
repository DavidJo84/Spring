package com.human.service;

import java.util.List;

import com.human.vo.BoardVO;

public interface IF_boardService {
	public void insertOne(BoardVO bvo) throws Exception;
	public List<BoardVO> selectAll() throws Exception;

}
