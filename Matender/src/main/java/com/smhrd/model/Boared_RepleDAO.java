package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class Boared_RepleDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 댓글 작성
	public int boardReple(Boared_RepleVO vo) {		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println("댓글 작성하러 왔냐?");
		int cnt = sqlSession.insert("com.smhrd.db.boardRepleMapper.repleWrite", vo);
		System.out.println("댓글 작성했냐?");
		sqlSession.close();
		return cnt;
	}
	
	// 댓글 불러오기
	public List<Boared_RepleVO> showReple(String boardNum) {		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<Boared_RepleVO> repleList = sqlSession.selectList("com.smhrd.db.boardRepleMapper.showReple",boardNum);
		System.out.println("게시판 댓글 조회 하냐?");
		sqlSession.close();
		return repleList;
	}
	
	// 댓글 삭제
	public int deleteBoardReple(String repleNo) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.delete("com.smhrd.db.boardRepleMapper.deleteBoardReple", repleNo);
		System.out.println("댓글 삭제 했냐?");
		session.close();		
		return cnt;		
	}
	
	
}
