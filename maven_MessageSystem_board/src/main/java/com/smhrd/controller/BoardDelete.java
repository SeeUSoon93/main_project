package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.BoardDAO;

public class BoardDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.deleteBoard(num);
		if(cnt > 0) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제실패");
		}
		return "BoardMain.jsp";
	}

}
