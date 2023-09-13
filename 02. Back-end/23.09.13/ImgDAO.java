package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ImgDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int imgSave(ImgVO boardImg) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int boardNum = sqlSession.insert("com.smhrd.db.boardMapper.imgSave", boardImg);
		sqlSession.close();
		return boardNum;
		
		
	
	}
	
	// 게시글 번호로 이미지정보 가져오기
	public BoardVO selectBoard(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardVO board3 = sqlSession.selectOne("com.smhrd.db.boardMapper.selectBoard",board);
		sqlSession.close();
		return board3;
	}
	
}
