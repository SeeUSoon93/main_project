package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.BoardDelete;
import com.smhrd.controller.BoardService;
import com.smhrd.controller.DeleteService;
import com.smhrd.controller.IdCheckService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.UpdateService;

@WebServlet("*.do")
public class frontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// url mapping -> *.do
		// * = 전체
		// .do 확장자가 붙으면 전부FrontController로 모임
		System.out.println("[FrontController]");
		
		// 어디서 요청이 들어왔는지 확인
		String uri = request.getRequestURI();
		System.out.println("들어온 요청 : " + uri);
		
		// 프로젝트 이름 확인
		String project = request.getContextPath();
		System.out.println("프로젝트이름 : " + project);
		
		// 문자열 잘라내기 -> uri
		// substring(start) -> start부터 끝까지 잘라주는 메소드
		// substring(start, end) -> start부터 end전까지 잘라주는 메소드
		uri = uri.substring(project.length()+1);
		System.out.println("요청 서블릿 : " + uri);
		
		// post방식 데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		String moveURL;
		if(uri.equals("loginService.do")) {
			LoginService service = new LoginService();
			moveURL = service.execute(request, response);
			response.sendRedirect(moveURL);
		}else if(uri.equals("joinService.do")) {
		    JoinService service = new JoinService();
		    moveURL = service.execute(request, response);
		    response.sendRedirect(moveURL);
		}else if(uri.equals("logoutService.do")) {
            LogoutService service = new LogoutService();
            moveURL = service.execute(request, response);
            response.sendRedirect(moveURL);
		}else if(uri.equals("UpdateService.do")) {
		    UpdateService service = new UpdateService();
		    moveURL = service.execute(request, response);
		    response.sendRedirect(moveURL);
		}else if(uri.equals("DeleteService.do")) {
			DeleteService service = new DeleteService();
			moveURL = service.execute(request, response);
		    response.sendRedirect(moveURL);
		}else if(uri.equals("BoardService.do")) {
			BoardService service = new BoardService();
			moveURL = service.execute(request, response);
		    response.sendRedirect(moveURL);
		}else if(uri.equals("boardDelete.do")) {
			BoardDelete service = new BoardDelete();
			moveURL = service.execute(request, response);
		    response.sendRedirect(moveURL);
		}else if(uri.equals("IdCheckService.do")) {
			IdCheckService service = new IdCheckService();
			moveURL = service.execute(request, response);
		}
	}

}
