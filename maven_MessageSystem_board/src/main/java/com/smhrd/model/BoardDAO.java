package com.smhrd.model;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 게시글 작성
	public int writeBoard(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.BoardMapper.writeBoard", board);
		sqlSession.close();
		return cnt;
	}
	// 전체 게시글 조회
	public List<BoardVO> showBoard() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<BoardVO> board_list = sqlSession.selectList("com.smhrd.db.BoardMapper.showBoard");
		sqlSession.close();
		return board_list;
	}
	
	// 게시글 상세정보 조회
	public BoardVO detailBoard(int num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardVO detail = sqlSession.selectOne("com.smhrd.db.BoardMapper.detailBoard", num);
		sqlSession.close();
		return detail;
	}
	public int deleteBoard(int num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("com.smhrd.db.BoardMapper.deleteBoard", num);
		sqlSession.close();
		return cnt;
	}

}
