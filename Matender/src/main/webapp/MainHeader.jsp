<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/main.css">

</head>
<body>
	<!--J쿼리 -->
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
		integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh"
		crossorigin="anonymous">
		
	</script>
	<!-- 배너 이미지 랜덤 출력하는 자바스크립트 -->
	<script>
            $(document).ready(function(){ 
      
    var numberOfImages=4;       
    var imageNum = Math.round(Math.random()*(numberOfImages-1))+1;     
    var imgPath=('./img/배너'+imageNum+'.jpg');   
    $('#banner').css('background-image', ('url("'+imgPath+'")'));
     
    });
  </script>

	<header>

		<div id="menu">
			<ul class="headmenu">
				<!-- <ul class='headmenu'> -->
				<li>
					<div id="logo">
						<a href="MainPage.jsp"><img src="./img/logo.png" alt=""
							width="170px"></a>
					</div>
				</li>
				<li><a href="CockMenu.jsp" data-hover="전체메뉴"><div>전체메뉴</div></a></li>
				<li><a href="CockRank.jsp" data-hover="인기순위"><div>인기순위</div></a></li>
				<li><a href="WebMagazine.jsp" data-hover="칵테일 이야기"><div>칵테일
							이야기</div></a></li>
				<li><a href="ContentsPage.jsp" data-hover="컨텐츠"><div>컨텐츠</div></a></li>
				<li><a href="ChallBoard.jsp" data-hover="도전! 바텐더"><div>도전!
							바텐더</div></a></li>
				<li><a href="WebBoard.jsp" data-hover="커뮤니티"><div>커뮤니티</div></a></li>
			
			<div class="pagebarmom">
				<%
				MemberVO login = (MemberVO) session.getAttribute("loginInfo");
				if (login != null) {
					System.out.println(login.getNickName());
				%>
				<div class="pagebar">
					<a href="MyPage.jsp">마이페이지</a>
				</div>
				<div onclick="kakaoLogout();" class="pagebar">
					<a href="Logout">로그아웃</a>
				</div>
				<%
				} else {
				%>

				<div class="pagebar" class="joinBtn">
					<a href="login.jsp">로그인/회원가입</a>
				</div>
				<%
				}
				%>
			</div>
</ul>
		</div>
	</header>
	<div id="banner">
		<div id="ani">
			<h1 id="mainsize">
				PICK<br>YOUR COCKTAIL
			</h1>
		</div>
	</div>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
		integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh"
		crossorigin="anonymous">
		
	</script>

	<!-- 카카오 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		Kakao.init('9af0b209440991a98a4221fd3e573d44'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		
		//카카오로그아웃  
		function kakaoLogout() {
			Kakao.Auth.logout({
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
                 		$.ajax({
                          location.href="Logout";
                    	})
						console.log(response)
					},
					fail : function(error) {
                 		$.ajax({
                            location.href="Logout";
                	})
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
			}
		}
	</script>
</body>
</html>