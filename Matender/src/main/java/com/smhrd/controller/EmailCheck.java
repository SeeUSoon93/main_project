package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

public class EmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("email");
		System.out.println(email);

		boolean check = new MemberDAO().emailCheck(email);

		PrintWriter out;
		
		out = response.getWriter();
		out.print(check);
		

	}

}
