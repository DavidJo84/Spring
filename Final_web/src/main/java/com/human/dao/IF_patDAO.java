package com.human.dao;

import java.util.List;

import com.human.vo.BoardVO;
import com.human.vo.PageVO;
import com.human.vo.PatVO;

public interface IF_patDAO {
	public void insertOne(PatVO pvo) throws Exception;
	public List<PatVO> selectAll(PageVO pgvo) throws Exception;
	public int countBoard() throws Exception;
	public void insertAttach(String filename) throws Exception;
	public BoardVO selectOne(String no) throws Exception;
	public List<String> selectAttach(String no) throws Exception;
	public void delete(String no) throws Exception;
	public void modyOne(PatVO pvo) throws Exception;
	
}
