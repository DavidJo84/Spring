package com.human.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_memberDAO;
import com.human.vo.MemberVO;

@Service
public class MemberServiceImpl implements IF_memberService{
	@Inject
	private IF_memberDAO mdao;
	
	@Override
	public void insertOne(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		mdao.insertOne(mvo);
		
	}
}
