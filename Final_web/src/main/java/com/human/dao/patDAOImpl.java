package com.human.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.human.vo.BoardVO;
import com.human.vo.PatVO;
import com.human.vo.SearchVO;

@Repository // DAO 단임을 알려준다.
public class patDAOImpl implements IF_patDAO {
	// spring의 DAO와 MyBatis sqlsession을 연결하는 객체
	private static String mapperQuery = "com.human.dao.IF_patDAO"; // mapping 인터페이스 경로설정

	// MyBatis의 sqlsession객체 선언
	@Inject // 컨테이너에서 자료향과 맞는 객체의 주소를 주입해준다.
	private SqlSession sqlSession;// sqlsession객체는 스프링 컨테이너에서 주입 받는다.

	@Override
	public void insertPat(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery + ".insertPat", pvo);
	}
	
	@Override
	public void insertRecord(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery + ".insertRecord", pvo);
	}

	@Override
	public List<PatVO> selectAll(SearchVO schvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery + ".selectAll", schvo);

	}

	@Override
	public int countBoard(SearchVO schvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery + ".countBoard",schvo);
	}

	@Override
	public void insertAttach(String filename) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery + ".board_attach", filename);
	}

	@Override
	public BoardVO selectOne(String no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery + ".selectOne", no);
	}

	@Override
	public List<String> selectAttach(String no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery + ".selectAttach", no);
	}

	@Override
	public void delete(String[] no) throws Exception {
		// TODO Auto-generated method stub
		for (int i = 0; i < no.length; i++) {
			sqlSession.delete(mapperQuery + ".delete", no[i]);
		}
	}

	@Override
	public void modyOne(PatVO pvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuery + ".modyOne", pvo);
	}

	@Override
	public void outDate(String[] num) throws Exception {
		// TODO Auto-generated method stub
		for (int i = 0; i < num.length; i++) {
			sqlSession.update(mapperQuery + ".outDate", num[i]);
		}
	}

}
