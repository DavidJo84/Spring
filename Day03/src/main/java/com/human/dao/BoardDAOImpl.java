package com.human.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.vo.BoardVO;

@Repository  //DAO 단임을 알려준다.
public class BoardDAOImpl implements IF_boardDAO{
	//spring의 DAO와 MyBatis sqlsession을 연결하는 객체
	private static String mapperQuery="com.human.dao.IF_boardDAO"; //mapping 인터페이스 경로설정
	
	//MyBatis의 sqlsession객체 선언
	@Inject //컨테이너에서 자료향과 맞는 객체의 주소를 주입해준다.
	private SqlSession sqlSession;//sqlsession객체는 스프링 컨테이너에서 주입 받는다.
	
	@Override
	public void insertOne(BoardVO bvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insertOne", bvo);
	}

	@Override
	public List<BoardVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectAll");
		
	}

}
