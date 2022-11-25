package com.human.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.vo.MemberVO;

@Repository
public class MemberDAOImpl implements IF_memberDAO{
	//spring의 DAO와 MyBatis sqlsession을 연결하는 객체
		private static String mapperQuery="com.human.dao.IF_memberDAO"; //mapping 인터페이스 경로설정
		
		//MyBatis의 sqlsession객체 선언
		@Inject //컨테이너에서 자료향과 맞는 객체의 주소를 주입해준다.
		private SqlSession sqlSession;//sqlsession객체는 스프링 컨테이너에서 주입 받는다.
		
		@Override
		public void insertOne(MemberVO mvo) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.insert(mapperQuery+".insertOne", mvo);
		}
	

}
