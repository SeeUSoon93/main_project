package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 회원가입
	public int join(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("com.smhrd.db.memberMapper.join", vo);
		System.out.println("회원 가입 했냐?");
		sqlSession.close();
		return cnt;
	}

	// 이메일 중복체크
	public boolean emailCheck(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("이메일 넘어옴?");
		MemberVO vo = session.selectOne("com.smhrd.db.memberMapper.emailCheck", email);
		System.out.println("가입시킴?");
		session.close();

		if (vo != null) {
			// 중복 O
			return false;
		} else {
			// 중복 X
			return true;
		}
	}
	
	// 로그인
	public MemberVO login(String nickName) {
		SqlSession session = sqlSessionFactory.openSession(true);		
		MemberVO loginInfo = session.selectOne("com.smhrd.db.memberMapper.login",nickName);
		System.out.println("로그인 했냐?");
		session.close();		
		return loginInfo;
	}
	
	// 내가 올린 도전 레시피 갯수 체크
	public int challengeRecipe(String nickName) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int challengeNum = session.selectOne("com.smhrd.db.memberMapper.challengeRecipe",nickName);
		session.close();
		return challengeNum;
	}
	
	// 북마크 갯수 체크
	public int bookMark(String nickName) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int bookMark = session.selectOne("com.smhrd.db.memberMapper.bookMark",nickName);
		session.close();
		return bookMark;
	}
	// 내가 올린 도전 레시피 갯수 출력
	public List<AllVO> memberInquiry(String nickName) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> memberInquiry = session.selectList("com.smhrd.db.memberMapper.memberInquiry",nickName);
		System.out.println("회원의 도전레시피 메뉴 조회 했냐?");
		session.close();
		return memberInquiry;
	}
	// 내가 북마크한 레시피 갯수 출력
	public List<AllVO> memberBookmark(String nickName) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AllVO> memberBookmark = session.selectList("com.smhrd.db.memberMapper.memberBookmark",nickName);
		System.out.println("회원의 북마크 메뉴 조회 했냐?");
		session.close();
		return memberBookmark;
	}
	
	
	
}
