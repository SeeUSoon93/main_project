package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.AllVO;
import com.smhrd.model.CockDAO;
import com.smhrd.model.LikeDAO;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.Member_likeVO;

public class RecipeBMService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String recipeNum = request.getParameter("recipeNum");
		String nickName = request.getParameter("nickName");
		System.out.println("북마크 할 게시글 번호 : " + recipeNum);
		
		Member_likeVO vo = new Member_likeVO(nickName, recipeNum);		
		
		boolean check = new LikeDAO().nickNameCheck(vo);
		
		AllVO recipeInfo = new CockDAO().recipeInfo(recipeNum);		
		PrintWriter out;
		if(check == false) {
//			중복이니까 북마크 취소
			System.out.println("북마크 삭제할거야?");
			new LikeDAO().delBookmark(vo);
			System.out.println("북마크 삭제!");
			try {
				out = response.getWriter();
				out.print(recipeInfo.getBOOKMARK_COUNT());
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}else {
			System.out.println("북마크 넣을거야?");
			new LikeDAO().insertBookmark(vo);
			System.out.println("북마크 넣기");
			try {
				out = response.getWriter();
				out.print(recipeInfo.getBOOKMARK_COUNT());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	
	}

}
