package com.human.service;

import java.util.List;

import com.human.vo.BoardVO;
import com.human.vo.PageVO;

public interface IF_boardService {
	public void insertOne(BoardVO bvo) throws Exception;
	public List<BoardVO> selectAll(PageVO pvo) throws Exception;
	public int countBoard() throws Exception;
	public BoardVO selectOne(String num) throws Exception;
	public List<String> selectAttach(String num) throws Exception;
	public void delete(String num) throws Exception;
	public void updateOne(BoardVO bvo) throws Exception;
}
