package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class UpdateService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	    String tel = request.getParameter("tel");
	    String address = request.getParameter("address");
	    
	    // 1. MemberVO 로 묶어주기
	    MemberVO vo = new MemberVO(email, pw, tel, address);
	    
	    // 2. MemberDAO update()
	    MemberDAO dao = new MemberDAO();
	    int cnt = dao.update(vo);
	    
	    // 3. 리턴타입에 따라 콘솔창에 수정성공 or 수정실패
	    if(cnt > 0) {
	    	System.out.println("수정성공");
	    	HttpSession session = request.getSession();
	    	session.setAttribute("login", vo);
	    }else {
	    	System.out.println("수정실패");
	    }
	    return "Main.jsp";
	    
	}

}
