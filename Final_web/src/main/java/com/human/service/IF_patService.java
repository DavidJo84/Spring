package com.human.service;

import java.util.List;

import com.human.vo.BoardVO;
import com.human.vo.PageVO;
import com.human.vo.PatVO;
import com.human.vo.SearchVO;

public interface IF_patService {
	public void insertPat(PatVO pvo) throws Exception;
	public void insertRecord(PatVO pvo) throws Exception;
	public List<PatVO> selectAll(SearchVO schvo) throws Exception;
	public int countBoard(SearchVO schvo) throws Exception;
	public BoardVO selectOne(String no) throws Exception;
	public List<String> selectAttach(String no) throws Exception;
	public void delete(String[] no) throws Exception;
	public void updateOne(PatVO pvo) throws Exception;
	public void outDate(String[] num) throws Exception;
}
