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

}
