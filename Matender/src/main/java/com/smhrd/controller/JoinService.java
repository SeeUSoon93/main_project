
package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String nickName = request.getParameter("nickName");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");

		System.out.println("회원가입할 정보 : 이름-"+nickName+"/메일-"+email+"/성별-"+gender+"/연령대-"+age);
		MemberVO vo = new MemberVO(nickName, email, gender, age);
		int cnt = new MemberDAO().join(vo);
		
		if (cnt > 0) {
			System.out.println("회원가입 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("joinVO", vo);
			response.sendRedirect("MainPage.jsp");
		} else {
			System.out.println("회원가입 실패...");
			response.sendRedirect("MainPage.jsp");
		}	
		
		
	
	}

}
