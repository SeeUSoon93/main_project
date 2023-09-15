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
