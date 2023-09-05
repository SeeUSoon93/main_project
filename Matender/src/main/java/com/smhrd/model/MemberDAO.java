package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 회원가입
		public int join(MemberVO vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = sqlSession.insert("com.smhrd.db.MemberMapper.join", vo);
			sqlSession.close();
			return cnt;
		}
	
}
