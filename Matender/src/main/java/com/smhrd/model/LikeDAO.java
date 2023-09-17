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

	public boolean nickNameCheck(Member_likeVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("북마크 하러 넘어옴?");
		Member_likeVO bookmark = session.selectOne("com.smhrd.db.cockMapper.nickNameCheck", vo);
		System.out.println("북마크 체크함?");
		session.close();

		if (bookmark != null) {
			// 중복 O
			return false;
		} else {
			// 중복 X
			return true;
		}
	}

	public int delBookmark(Member_likeVO vo) {
		System.out.println("북마크 삭제 하러옴?");
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.delete("com.smhrd.db.cockMapper.delBookmark", vo);
		System.out.println("북마크 삭제 했냐?");
		session.close();		
		return cnt;		
	}
	
	public int insertBookmark(Member_likeVO vo) {
		System.out.println("북마크 하러옴?");
		SqlSession session = sqlSessionFactory.openSession(true);		
		int cnt = session.insert("com.smhrd.db.cockMapper.insertBookmark", vo);
		System.out.println("북마크 했냐?");
		session.close();		
		return cnt;		
	}	
	
	
	
}
