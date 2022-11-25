package com.human.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.vo.MemberVO;

@Repository
public class MemberDAOImpl implements IF_memberDAO {
	private static String mapperQuery="com.human.dao.IF_memberDAO";
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insertOne(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insertOne", mvo);
	}

	@Override
	public List<MemberVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectAll");
	}

	@Override
	public MemberVO selectOne(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(mvo.getId()+"다오");
		return sqlSession.selectOne(mapperQuery+".selectOne", mvo);
	}

}
