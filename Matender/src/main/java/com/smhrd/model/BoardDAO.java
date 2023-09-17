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
		System.out.println("게시글 작성했냐?");
		sqlSession.close();
		return cnt;
	}
	
	// 게시글 번호 가져오기
	public BoardVO selectBoard(BoardVO board) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardVO board2 = sqlSession.selectOne("com.smhrd.db.boardMapper.selectBoard",board);
		System.out.println("게시글 번호 가져오냐? : "+board2.getBoardNum());
		sqlSession.close();
		return board2;
	}
	
	public int boardWriteImg(ImgVO imgvo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int boardNum2 = sqlSession.insert("com.smhrd.db.boardMapper.boardWriteImg", imgvo);
		System.out.println("이미지 삽입헀냐?");
		sqlSession.close();
		return boardNum2;
	}	
	
	// 전체 게시글 조회
	public List<BoardVO> WebBoard() {		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<BoardVO> boardList = sqlSession.selectList("com.smhrd.db.boardMapper.WebBoard");
		System.out.println("게시글 전체조회 하냐?");
		sqlSession.close();
		return boardList;
	}
	
	// 검색 작성자 게시글 조회
	public List<BoardVO> boardSerch(String nickName) {		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<BoardVO> boardList = sqlSession.selectList("com.smhrd.db.boardMapper.boardSerch",nickName);
		System.out.println("작성자 조회 하냐?");
		sqlSession.close();
		return boardList;
	}
	
	// 게시글 상세 조회
	public BoardVO showText(String boardNum) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		BoardVO boardInfo = session.selectOne("com.smhrd.db.boardMapper.showText",boardNum);		
		System.out.println("게시글 상세조회 하냐?");
		session.close();		
		return boardInfo;
	}
	
	// 이미지 조회
	public ImgVO showImg(String boardNum) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		ImgVO imgInfo = session.selectOne("com.smhrd.db.boardMapper.showImg",boardNum);
		System.out.println("이미지 경로 조회 하냐?");
		session.close();		
		return imgInfo;
	}
	// 이미지 조회2
	public ImgVO showImgRecipe(String recipeNum) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		ImgVO imgInfo = session.selectOne("com.smhrd.db.boardMapper.showImgRecipe", recipeNum);
		System.out.println("이미지 경로 조회 하냐?22");
		session.close();		
		return imgInfo;
	}
	
	// 게시글 삭제
	public int deleteBoard(String boardNum) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.delete("com.smhrd.db.boardMapper.deleteBoard", boardNum);
		System.out.println("게시글 삭제 했냐?");
		int cnt2 = session.delete("com.smhrd.db.boardMapper.deleteIMG", boardNum);
		System.out.println("이미지 삭제 했냐?");
		session.close();		
		return cnt;		
	}
	
	// 추천 수 업데이트
	public int boardGoodPlus(String boardNum) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.update("com.smhrd.db.boardMapper.boardGoodPlus", boardNum);
		System.out.println("게시글 추천 했냐?");
		System.out.println(cnt);		
		session.close();		
		return cnt;		
	}

	
	
	
	// 레시피 작성
	public int recipeWrite(CockVO cocktail) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.cockMapper.recipeWrite", cocktail);		
		System.out.println("레시피 작성했냐?");
		sqlSession.close();
		return cnt;
	}

	// 레시피 번호 가져오기
	public CockVO recipeBoard(CockVO cocktail) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println("여기는 왔니...?");
		CockVO cocktailInfo = sqlSession.selectOne("com.smhrd.db.cockMapper.selectRecipe",cocktail);
		System.out.println("레시피 번호 가져오냐? : "+cocktailInfo.getRecipeNum());
		sqlSession.close();
		return cocktailInfo;
	}
	
	public int recipeWriteImg(ImgVO imgvo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cocktail2 = sqlSession.insert("com.smhrd.db.cockMapper.recipeWriteImg", imgvo);
		System.out.println("레시피 이미지 삽입헀냐?");
		sqlSession.close();
		return cocktail2;
	}	
	
}
