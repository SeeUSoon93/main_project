package com.smhrd.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	// interface : 틀
	
	// 추상 메소드 : 틀 안의 항목 -> 이 인터페이스를 상속받으면 무조건 구현해야하는 메소드
	// ex) 이름, 번호, 주소...
	
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
	
}
