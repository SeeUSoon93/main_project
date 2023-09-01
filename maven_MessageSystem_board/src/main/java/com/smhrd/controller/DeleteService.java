package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;

public class DeleteService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.deleteMember(email);
		if(cnt > 0) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제실패");
		}
		return "ShowMember.jsp";
	}

}
