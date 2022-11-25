package com.human.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dao.IF_memberDAO;
import com.human.vo.MemberVO;

@Service
public class MemberServiceImpl implements IF_memberService {
	
	@Inject
	private IF_memberDAO mdao;
	
	@Override
	public void insertOne(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		if(mvo.getGrade().equals("vip")) {
			mvo.setPoint(1000);
		}
		mdao.insertOne(mvo);
	}

	@Override
	public List<MemberVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return mdao.selectAll();
	}

	@Override
	public MemberVO selectOne(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(mvo.getId()+"서비스");
		return mdao.selectOne(mvo);
	}

}
