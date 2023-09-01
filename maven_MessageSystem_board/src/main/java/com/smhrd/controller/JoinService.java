package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
	    String pw = request.getParameter("pw");
	    String tel = request.getParameter("tel");
	    String address = request.getParameter("address");
	    
	    MemberVO vo = new MemberVO(email, pw, tel, address);
	    
	    MemberDAO dao = new MemberDAO();
	    int cnt = dao.join(vo);
	    
	    if(cnt > 0) {
	    	// 회원가입 성공
	        System.out.println("회원가이ㅏㅂ 성공!");
	        // 포워딩 방식 JoinSuccess.jsp 이동, request영역에 email저장
//	        RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
//	        request.setAttribute("joinVO", vo);
//	        rd.forward(request, response);
//	        response.sendRedirect("JoinSuccess.jsp?email="+email);
	        return "JoinSuccess.jsp?email="+email;
	    }else {
	    	System.out.println("회원가이ㅏㅂ 실패!");
	    	return "Main.jsp";
	    }
		
	}

}
