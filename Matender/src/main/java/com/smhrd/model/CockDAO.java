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

}
