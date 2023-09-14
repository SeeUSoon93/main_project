package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;
import com.smhrd.model.Boared_RepleDAO;
import com.smhrd.model.Boared_RepleVO;

public class RepleInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String boardNum = request.getParameter("boardNum");
		String repleCon = request.getParameter("repleCon");
		String nickName = request.getParameter("nickName");
		System.out.println("댓글 달 게시글 번호 : " + boardNum);
		System.out.println("댓글 다는 닉네임 : " + nickName);
		System.out.println("댓글 내용 : " +repleCon);
		
		Boared_RepleVO vo = new Boared_RepleVO(null, repleCon, null, boardNum, nickName);
		int cnt = new Boared_RepleDAO().boardReple(vo);
		PrintWriter out;

		if (cnt != 0) {
			System.out.println("댓글 달기 성공!");			
			try {
				out = response.getWriter();
				out.print(vo);
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("댓글 달기 실패...");
		}
	
	}

}
