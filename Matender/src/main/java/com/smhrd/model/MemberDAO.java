package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 회원가입
	public int join(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.memberMapper.join", vo);
		sqlSession.close();
		return cnt;
	}

	// 이메일 중복체크
	public boolean emailCheck(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("넘어옴?");
		MemberVO vo = session.selectOne("com.smhrd.db.memberMapper.emailCheck", email);
		session.close();

		if (vo != null) {
			// 중복 O
			return false;
		} else {
			// 중복 X
			return true;
		}
	}
}
