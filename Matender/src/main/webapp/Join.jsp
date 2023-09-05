<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinService" method="post">
		<h2>회원가입</h2>
		EMAIL : <input type="text" placeholder="EMAIL을 입력하세요" name="id"><br>	
		MEM ID : <input type="password" placeholder="MEM ID를 입력하세요" name="memId"><br>	
		NICK : <input type="text" placeholder="닉네임을 입력하세요" name="nick"><br>
		GENDER : <input type="text" placeholder="성별을 입력하세요" name="gender"><br>		
		AGE : <input type="text" placeholder="나이를 입력하세요" name="age"><br>		
		<input type="submit" value="회원가입">
	</form>
</body>
</html>