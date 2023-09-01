package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	 
	// 팩토리를 통해서 회원가입을 위한 세션, 로그인을 위한 세션...을 만들어 줄거다!
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
    
    
    // 회원가입
    public int join(MemberVO vo) {
    	
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.MemberMapper.join", vo);
		session.close();
		return cnt;
    }


	public MemberVO login(MemberVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberVO login = session.selectOne("com.smhrd.db.MemberMapper.login", vo);
		session.close();
		return login;
	}


	public int update(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("com.smhrd.db.MemberMapper.update", vo);
		session.close();
		return cnt;
	}
	
	// 전체회원조회 메소드
	public List<MemberVO> showMember() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<MemberVO> mem_list = session.selectList("com.smhrd.db.MemberMapper.showMember");
		session.close();
		return mem_list;
	}

    // 회원 삭제
	public int deleteMember(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("com.smhrd.db.MemberMapper.deleteMember", email);
		session.close();
		return cnt;
		
	}

    // 아이디 중복체크
	public boolean idCheck(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberVO vo = session.selectOne("com.smhrd.db.MemberMapper.idCheck",email);
		session.close();
		if(vo != null) {
			// 중복O
			return false;
		}else {
			// 중복X
			return true;
		}   
		
	}
    
}
