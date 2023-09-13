<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
		<%
 String email = request.getParameter("email");
		System.out.println("jsp : "+email);
		System.out.println("----------------");
		
		%>
	</script>
</head>
<body>

	<form action="JoinService" method="post">
		<h2>회원가입</h2>
		NICK : <input type="text" placeholder="닉네임을 입력하세요" name="nickName"><br>
		<!-- 닉네임 중복체크 해야해요~ -->
		GENDER : <input type="text" placeholder="성별을 입력하세요" name="gender"><br>
		<!-- 팀장: 연령대는 라이오 버튼으로 변경하세요 -->
		AGE : <input type="text" placeholder="연령대를 입력하세요" name="age"><br>
		<input type="hidden" value=<%=email%> name="email">
		</li> <input type="submit" value="회원가입">
	</form>
</body>
</html>