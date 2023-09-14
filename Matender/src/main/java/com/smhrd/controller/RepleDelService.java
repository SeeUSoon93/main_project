package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.Boared_RepleDAO;
import com.smhrd.model.Boared_RepleVO;

public class RepleDelService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String repleNo = request.getParameter("repleNo");
		System.out.println("댓글 삭제 할 리플 번호 : " + repleNo);
		String boardNum = request.getParameter("boardNum");
		System.out.println("댓삭할 게시글 번호 : " + boardNum);

		int del = new Boared_RepleDAO().deleteBoardReple(repleNo);

		if (del != 0) {
			System.out.println("댓삭 성공!");
			response.sendRedirect("WebBoardDetail.jsp?boardNum="+boardNum);
		} else {
			System.out.println("댓삭 실패...");
			response.sendRedirect("WebBoardDetail.jsp?boardNum="+boardNum);
		}

	}

}
