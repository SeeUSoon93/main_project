package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;

public class boardGoodService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String boardNum = request.getParameter("boardNum");
		System.out.println("추천 수 늘릴 게시글 번호 : " + boardNum);
		BoardVO boardInfo = new BoardDAO().showText(boardNum);

		boardNum = boardInfo.getBoardNum();
		System.out.println("셀렉트로 다시 뽑아온 추천 수 늘릴 게시글 번호 : " + boardNum);
		int del = new BoardDAO().boardGoodPlus(boardNum);
		PrintWriter out;

		if (del != 0) {
			System.out.println("추천 성공!");

			System.out.println("늘어 난 추천 수 : " + boardInfo.getBoardGood());

			try {
				out = response.getWriter();
				out.print(boardInfo.getBoardGood());
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("추천 실패...");
		}

	}

}
