<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Bartender｜마텐더</title>
<link rel="stylesheet" href="fontstyle.css">
<style class="header">
#menu {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
	margin: 20px;
	font-family: "GeekbleMalang2WOFF2";
}

#logo {
	display: flex;
	align-items: center;
}

.headmenu {
	display: flex;
	list-style-type: none;
	font-size: 1.25rem;
	align-items: center
}

.headmenu>li {
	margin: 0 40px;
	justify-content: space-between;
}

.joinBtn {
	background-color: #CC9933;
	padding: 15px 20px;
	border-radius: 10px;
}

li:hover {
	color: #CC9933;
	cursor: pointer;
}

.joinBtn:hover {
	background-color: #0d4660;
	color: white;
	text-decoration: none;
}

#banner {
	background-image: url(./img/mainthum.jpg);
	height: 300px;
	max-width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

a {
	text-decoration: none;
}

.joinBtn>a {
	color: white;
}
</style>
</head>
<body>
	<header>
		<div id="menu">
			<div id="logo">
				<a href="MainPage.jsp"><img src="./img/logo.png" alt=""
					width="170px"></a>
			</div>
			<ul class='headmenu'>
				<li>전체메뉴</li>
				<li>인기순위</li>
				<li>칵테일 이야기</li>
				<li>컨텐츠</li>
				<li>도전! 바텐더</li>
				<li>커뮤니티</li>
				<li class="joinBtn"><a href="login.jsp">로그인/회원가입</a></li>
			</ul>
		</div>
	</header>
	<div id="banner"></div>

</body>
</html>