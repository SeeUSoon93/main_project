package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LikeDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<LikeVO> like(){
		SqlSession session = sqlSessionFactory.openSession(true);		
	    List<LikeVO> like = session.selectList("com.smhrd.db.cockMapper.like");		
		session.close();		
		return like;
	}

}
