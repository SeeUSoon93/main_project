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
		<h2>ȸ������</h2>
		EMAIL : <input type="text" placeholder="EMAIL�� �Է��ϼ���" name="id"><br>	
		MEM ID : <input type="password" placeholder="MEM ID�� �Է��ϼ���" name="memId"><br>	
		NICK : <input type="text" placeholder="�г����� �Է��ϼ���" name="nick"><br>
		GENDER : <input type="text" placeholder="������ �Է��ϼ���" name="gender"><br>		
		AGE : <input type="text" placeholder="���̸� �Է��ϼ���" name="age"><br>		
		<input type="submit" value="ȸ������">
	</form>
</body>
</html>