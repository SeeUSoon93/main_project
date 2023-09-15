package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.AllVO;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;
import com.smhrd.model.CockDAO;
import com.smhrd.model.LikeVO;
import com.smhrd.model.Member_likeVO;

public class RecipeLikeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String recipeNum = request.getParameter("recipeNum");
		String nickName = request.getParameter("nickName");
		System.out.println("추천 수 늘릴 게시글 번호 : " + recipeNum);
		AllVO recipeInfo = new CockDAO().recipeInfo(recipeNum);
		
		Member_likeVO vo = new Member_likeVO(nickName, recipeNum); 
		recipeNum = recipeInfo.getRecipeNum();
		
		System.out.println("셀렉트로 다시 뽑아온 추천 수 늘릴 게시글 번호 : " + recipeNum);
		int del = new CockDAO().recipeLikePlus(vo);
		PrintWriter out;

		if (del != 0) {
			System.out.println("좋아요 성공!");

			System.out.println("늘어 난 좋아요 수 : " + recipeInfo.getLIKE_COUNT());

			try {
				out = response.getWriter();
				out.print(recipeInfo.getLIKE_COUNT());
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("추천 실패...");
		}
	
	
	}

}
