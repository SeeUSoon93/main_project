package com.smhrd.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String memID = request.getParameter("memID");
		String nickName = request.getParameter("nickName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		

		System.out.println(email + memID + nickName + gender + age);
		MemberVO vo = new MemberVO(email, memID, nickName, gender, age);
		int cnt = new MemberDAO().join(vo);
		if (cnt > 0) {
			System.out.println("회원가입 성공!");

		} else {
			System.out.println("회원가입 실패...");
		}
		return "MainPage.jsp";
	}

}
