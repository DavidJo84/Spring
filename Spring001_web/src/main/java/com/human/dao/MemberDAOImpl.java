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
		sqlSession.insert(mapperQuery+".insertOne", mvo);
	}

	@Override
	public List<MemberVO> selectAll() throws Exception {
		return sqlSession.selectList(mapperQuery+".selectAll");
	}

	@Override
	public MemberVO selectOne(MemberVO mvo) throws Exception {
		return sqlSession.selectOne(mapperQuery+".selectOne", mvo);
	}

	@Override
	public void updateOne(MemberVO mvo) throws Exception {
		sqlSession.update(mapperQuery+".updateOne", mvo);
		
	}
	
	@Override
	public void deleteOne(String id) throws Exception {
		sqlSession.delete(mapperQuery+".deleteOne", id);
	}
}
