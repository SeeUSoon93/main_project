package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;

public class WebBoardDelService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardNum = request.getParameter("boardNum");
		
		System.out.println("삭제할 게시글 번호 : "+boardNum);
		int del = new BoardDAO().deleteBoard(boardNum);

		if (del != 0) {
			System.out.println("삭제 성공!");
			response.sendRedirect("WebBoard.jsp?page=1");
		} else {
			System.out.println("삭제 실패...");
			response.sendRedirect("WebBoard.jsp?page=1");
		}
	
	
	}

}
