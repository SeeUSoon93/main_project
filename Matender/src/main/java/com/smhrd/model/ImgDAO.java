package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ImgDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
	// 게시글 번호로 이미지정보 가져오기
	public BoardVO selectBoard(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardVO board3 = sqlSession.selectOne("com.smhrd.db.boardMapper.selectBoard",board);
		System.out.println("게시글 번호로 이미지 정보 가져왔냐?");
		sqlSession.close();
		return board3;
	}
	
}
