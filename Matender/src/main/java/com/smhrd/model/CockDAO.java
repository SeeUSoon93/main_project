package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CockDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 전체 메뉴 조회
	public List<CockVO> inquiry() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CockVO> inquiry = session.selectList("com.smhrd.db.cockMapper.inquiry");
		System.out.println("전체 칵테일 메뉴 조회 했냐?");
		session.close();
		return inquiry;
	}

	// 전체 조인 메뉴 조회
	public List<AllVO> joinInquiry() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> joinInquiry = session.selectList("com.smhrd.db.cockMapper.joinInquiry");
		System.out.println("전체 조인 칵테일 메뉴 조회 했냐?");
		session.close();
		return joinInquiry;

	}
	
	public List<AllVO> joinInquiry2() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> joinInquiry = session.selectList("com.smhrd.db.cockMapper.joinInquiry2");
		System.out.println("일반 조인 칵테일 메뉴 조회 했냐?");
		session.close();
		return joinInquiry;

	}
	
	public List<AllVO> joinInquiry3() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> joinInquiry = session.selectList("com.smhrd.db.cockMapper.joinInquiry3");
		System.out.println("챌린지 조인 칵테일 메뉴 조회 했냐?");
		session.close();
		return joinInquiry;

	}
	
	
	// 인기 순위 조회
	public List<AllVO> joinRank() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> joinInquiry = session.selectList("com.smhrd.db.cockMapper.joinRank");
		System.out.println("일반 인기순위 칵테일 메뉴 조회 했냐?");
		session.close();
		return joinInquiry;

	}
	
	public List<AllVO> joinRank2() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> joinInquiry = session.selectList("com.smhrd.db.cockMapper.joinRank2");
		System.out.println("도전 인기순위 칵테일 메뉴 조회 했냐?");
		session.close();
		return joinInquiry;

	}
	
	// 유사레시피 조회
	public List<AllVO> similRecipe(String base) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> similRecipe = session.selectList("com.smhrd.db.cockMapper.similRecipe",base);
		System.out.println("유사한 칵테일 메뉴 조회 했냐?");
		session.close();
		return similRecipe;

	}
	
	
	
	
	
	
	
	
	
	

	// 레시피 상세 조회
	public AllVO recipeInfo(String recipeNum) {
		SqlSession session = sqlSessionFactory.openSession(true);
		AllVO recipeInfo = session.selectOne("com.smhrd.db.cockMapper.recipeInfo", recipeNum);
		System.out.println("레시피 상세조회 하냐?");
		session.close();
		return recipeInfo;
	}
	
	// 레시피 좋아요 늘리기
	public int recipeLikePlus(Member_likeVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.insert("com.smhrd.db.cockMapper.recipeLikePlus", vo);
		System.out.println("레시피 좋아요 했냐?");
		System.out.println(cnt);		
		session.close();		
		return cnt;		
	}

}
