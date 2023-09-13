package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nickName = request.getParameter("nickName");
		System.out.println(nickName);

		MemberVO loginInfo = new MemberDAO().login(nickName);

		if (loginInfo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginInfo", loginInfo);
			response.sendRedirect("MainPage.jsp");
		} else {
			
		}
		
		
		
	}


}
