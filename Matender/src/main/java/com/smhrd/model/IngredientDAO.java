package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class IngredientDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 재료 불러오기
	public List<IngredientVO> ingredientList(String recipeNum) {		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<IngredientVO> ingredientList = sqlSession.selectList("com.smhrd.db.ingredientMapper.ingredientList",recipeNum);
		System.out.println("레시피 재료 조회 하냐?");
		sqlSession.close();
		return ingredientList;
	}

	// 재료 전체 불러오기
	public List<IngredientVO> ingreAll() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<IngredientVO> ingreAll = session.selectList("com.smhrd.db.ingredientMapper.ingreAll");
		System.out.println("전체 재료 조회 했냐?");
		session.close();
		return ingreAll;
	}
	
	public int ingreWrite(IngredientVO ingvo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		System.out.println("재료 durldhkTsi...?");
		int ingreWrite = sqlSession.insert("com.smhrd.db.ingredientMapper.ingreWrite", ingvo);
		System.out.println("재료 삽입헀냐?");
		sqlSession.close();
		return ingreWrite;
	}
}
