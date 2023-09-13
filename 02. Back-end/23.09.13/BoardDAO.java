package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 게시글 작성
	public int boardWrite(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.boardMapper.boardWrite", board);		
		sqlSession.close();
		return cnt;
	}
	
	public int boardWrite2(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.boardMapper.boardWrite2", board);		
		sqlSession.close();
		return cnt;
	}
	
	public int boardWriteImg(BoardVO Num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int boardNum = sqlSession.insert("com.smhrd.db.boardMapper.boardWriteImg", Num);
		sqlSession.close();
		return boardNum;
	}
	
	
	// 게시글 번호 가져오기
	public BoardVO selectBoard(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardVO board3 = sqlSession.selectOne("com.smhrd.db.boardMapper.selectBoard",board);
		sqlSession.close();
		return board3;
	}
	
	
	// 전체 게시글 조회
	public List<BoardVO> WebBoard() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<BoardVO> boardList = sqlSession.selectList("com.smhrd.db.boardMapper.WebBoard");
		sqlSession.close();
		return boardList;
	}
	
	
	// 게시글 상세 페이지
	
}
