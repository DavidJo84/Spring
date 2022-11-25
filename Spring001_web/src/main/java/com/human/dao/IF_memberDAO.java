package com.human.dao;

import java.util.List;

import com.human.vo.MemberVO;

public interface IF_memberDAO {
	public void insertOne(MemberVO mvo) throws Exception;
	public List<MemberVO> selectAll() throws Exception;
	public MemberVO selectOne(MemberVO mvo) throws Exception;

}
