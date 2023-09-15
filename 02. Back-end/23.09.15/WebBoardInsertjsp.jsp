<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/WebBoardInsert.css">
<link rel="stylesheet" href="fontstyle.css" />
</head>
<body>
	<%@ include file="MainHeader.jsp"%>
	<!-- 로그인을 했을 때 닉네임 출력 -->
	<%
	login = (MemberVO) session.getAttribute("loginInfo");
	String nick;
	if (login == null) {
		nick = "로그인하세요";
	} else {
		nick = login.getNickName();
	}
	%>


	<div class="group">
		<div class="boardHeader">
			<h1>게시글 작성</h1>
		</div>

		<div class="boardWrite">
			<div class="writeLeft">
				<div class="nickName1">작성자</div>
				<div class="boardTitle1">제 &nbsp;&nbsp;목</div>
				<div class="boardText1">내 &nbsp;&nbsp;용</div>
			</div>
			<form action="WebBoardInsertService" method="post"
				enctype="multipart/form-data">
				<div class="writeRight">
					<div class="nickName2">
						<input type="text" value=<%=nick%> name="nickName">
					</div>
					<div class="boardTitle2">
						<input type="text" placeholder="제목을 입력하세요" name="boardTitle">
					</div>
					<div class="boardText2">
						<textarea placeholder="내용을 입력하세요" name="boardText"></textarea>
						<div>
							<input type="file" name="filename">
						</div>
						<div class="writeBtn">
							<input type="submit" value="작 성">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>