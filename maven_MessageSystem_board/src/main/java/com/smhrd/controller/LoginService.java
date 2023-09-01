package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class LoginService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		            // email, pw 값 받기
				    String email = request.getParameter("email");
				    String pw = request.getParameter("pw");
				    
				    MemberVO vo = new MemberVO(email, pw);
				    
				    MemberDAO dao = new MemberDAO();
				    MemberVO login = dao.login(vo);
				    if(login != null) {
				    	// 로그인 성공
				    	HttpSession session = request.getSession();
				    	session.setAttribute("login", login);
				    }else {
				    	// 로그인 실패
				    }
				    return "Main.jsp";
	}

}
