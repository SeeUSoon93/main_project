<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>K-pop 속의 칵테일</title>
<link rel="stylesheet" href="./font_style/main.css">

</head>
<body>
	<!--J쿼리 -->
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
		integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh"
		crossorigin="anonymous">
		
	</script>
	<header>
		<div id="menu">
			<ul class="headmenu">
				<!-- <ul class='headmenu'> -->
				<li>
					<div id="logo">
						<a href="../MainPage.jsp"><img src="./img/logo.png" alt=""
							width="170px"></a>
					</div>
				</li>
				<li><a href="../CockMenu.jsp?menu=main" data-hover="전체메뉴"><div>전체메뉴</div></a></li>
				<li><a href="../CockRank.jsp" data-hover="인기순위"><div>인기순위</div></a></li>
				<li><a href="../ChallBoard.jsp" data-hover="도전!마텐더"><div>도전! 마텐더</div></a></li>
				<li><a href="../WebMagazine.jsp" data-hover="칵테일 웹진"><div>칵테일
							웹진</div></a></li>
				<li><a href="../Test.jsp" data-hover="연애테스트"><div>연애테스트</div></a></li>
				<li><a href="../WebBoard.jsp?page=1" data-hover="커뮤니티"><div>커뮤니티</div></a></li>
			
			<div class="pagebarmom">
				<%
				MemberVO login = (MemberVO) session.getAttribute("loginInfo");
				if (login != null) {
					System.out.println("현재 로그인한 아이디(메인헤더) : "+login.getNickName());
				%>
				<div class="pagebar">
					<a href="../MyPage.jsp">마이페이지</a>
				</div>
				<div onclick="kakaoLogout();" class="pagebar">
					<a href="Logout">로그아웃</a>
				</div>
				<%
				} else {
				%>

				<div class="pagebar" class="joinBtn">
					<a href="../login.jsp">로그인/회원가입</a>
				</div>
				<%
				}
				%>
			</div>
</ul>
		</div>
<!--여기--><div id="webzinebanner" style="background-image: url(./img/Webzine/webzineBanner01.png);">
			<div id="ani">
				<h1 id="mainsize">					
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
	</header>
<!--여기--><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->
	<br>
	<br>
	<div id="webzinebody">
		<div id="cockStoryTitle">
			<h1>K-pop 속의 칵테일</h1>
			<h2 style="color: #8b8b8b;">TWICE가 말하는 칵테일을 닮은 사랑</h2>
			<br>			
		</div>
		<div class="cockStoryWriter">
			<hr>
			<table>
				<td>작성자 : 순이&nbsp&nbsp&nbsp&nbspI&nbsp&nbsp&nbsp</td>
				<td>발행일 : 2023년 9월 13일</td>
			</table>
			<hr>
		</div>
		<div id="cockStoryText">
			<div>
			<br>
				<p>저희 마텐더와 함께하는 칵테일과 관련된 다양한 이야기들, 재밌게 즐기고 계신가요?</p>
				<p>이 분위기를 이어서 이번 글에서는 노래에 등장하는 칵테일 이야기를 해보려고 합니다.</p>
				<br>
				<p>TWICE라는 걸그룹, 많이들 알고 계실거라고 믿어 의심치 않는데요,</p>
				<p>저 역시 제 망태기 속 수많은 그룹 중 하나로 노래도, 무대도 좋아하는 편입니다.</p>
				<br><img
					src="./img/Webzine/webzine01.png"
					width="100%"> <br>
				<P>TWICE는 2015년 10월 20일에 데뷔한 JYP엔터테인먼트 소속의 9인조 다국적 걸그룹으로 다양한 컨셉과
					노래들을 소화하면서 대중들의 많은 사랑을 받고 있습니다.</P>
				<P>지금까지의 활동기간 중 나온 수많은 TWICE의 노래들 중 오늘의 주인공, 칵테일들이 등장하는 노래가
					있는데요,</P>
				<P>TWICE의 미니 10집 Taste of Love의 1번 트랙이자 타이틀 곡,
					‘Alcohol-Free’입니다.</P>
				<P>‘Alcohol-Free’는 보사노바에 힙합을 결합시켜 TWICE만의 새로운 색깔로 표현한 뉴 서머
					댄스곡으로, 사랑에 빠지는 마법 같은 순간을 노래하며 달콤한 와인과 칵테일 이름을 이용한 후렴 가사로 듣는 재미를 높인
					곡입니다.</P>
				<br>
				<P>이 곡에선 다음과 같은 가사가 나오는데요</P>
				<br>
				<div id="dlsdyd">
					<br>
					<p>너는 눈으로 마시는</p>
					<p>내 Champagne, 내 Wine내 Tequila,</p>
					<p>margaritaMojito with limeSweet mimosa,</p>
					<p>pina colada</p>
					<p>I’m drunk in you</p>
					<br>
				</div>
				<br>
				<P>이 가사에 나오는 칵테일들.. 이름은 많이 들어봤는데 어떤 칵테일들인지 궁금하셨다면 지금부터 하나하나 차례대로
					알아가보는 시간을 가지도록 해보겠습니다.</P>

				<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br> <br>
				<h3>첫 번째, 마가리타</h3><br>
				<img 
					src="https://blog.kakaocdn.net/dn/dgFd6b/btstG4UhvaP/F5APEi8NkjdkkdFBr6LZCK/img.png"
					class="cockStoryIMG"><br>
				<P>마가리타는 스페인어로 데이지(Daisy)를 뜻하는 말로 칵테일 종류인 '데이지'를 변형시켜 브랜디 대신
					데킬라를 사용했다는 것에서 유래한 칵테일 입니다. 리밍 소금(잔의 테두리에 소금을 묻히는 것)이 특징적인 칵테일로, 이
					소금은 데킬라의 쓴 맛을 완화 시키면서 달고 상큼한 향을 극대화 시켜주는 역할을 합니다.</P>
				<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br> <br>
				<h3>두 번째, 모히또</h3><br>
				<img
					src="https://blog.kakaocdn.net/dn/bnXqPs/btstyiTenkU/6KnfiWKKmxIt4GL7QfopQ1/img.png"
					class="cockStoryIMG"><br>
				<P>모히또의 유래에는 다양한 가설이 있지만, 영국의 탐험가 프란시스 드레이크의 이름을 본따 만들어진 칵테일,
					"Draque"를 모히또의 원조 레시피로 보는 경우가 많습니다. 화이트럼, 스피어민트, 얼음, 탄산수, 설탕(또는
					시럽), 라임즙으로 만들어지는 칵테일로 미국의 소설가이자 저널리스트였던 어니스트 헤밍웨이가 즐겨 마셨던 것으로도
					유명합니다.</P>
				<br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<h3>세 번째, 스윗미모사</h3><br>
				<img
					src="https://blog.kakaocdn.net/dn/ATmY2/btstzv51i9S/uGH7qtuuNksZZIgGIBYng1/img.png"
					class="cockStoryIMG"><br>
				<P>청초하고 가련한 미모사 꽃과 같이 싱싱하면서도 부드러운 칵테일 미모사는, 글라스에 따랐을 때의 색깔이 미모사
					꽃과 비슷하다고 하여 ‘미모사’란 애칭으로 불리게 된 칵테일입니다. 오렌지 주스의 향기에 품위 있는 샴페인이 곁들여져
					분위기를 한층 살려주는 음료라고 할 수 있습니다.</P>
				<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br> <br>
				<h3>네 번째, 피나콜라다</h3><br>
				<img
					src="https://blog.kakaocdn.net/dn/KcYjA/btstKXHjHvM/YlBPW6AC8UkJdgj81GBdJ0/img.png"
					class="cockStoryIMG"><br>
				<P>"삐냐(piña)"는 스페인어로 파인애플을 의미합니다. 피냐콜라다는 이름 그대로 새콤달콤한 파인애플과 진한
					코코넛 향이 어우러진 열대 칵테일을 말하는 셈이죠. 이러한 피나콜라다는 푸에르토리코의 공식음료로 지정되어 많은 사랑을
					받고 있는 칵테일이기도 합니다.</P>
				<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br> <br>
				<P>지금까지 노래 한 곡을 듣는 것 만으로도 무려 4종류의 칵테일에 대한 정보를 알아볼 수 있었는데요, 이 노래에
					나오는 4종류의 칵테일 중 혹시 이 글을 읽는 여러분의 사랑과 비슷한 건 어떤 칵테일일까요?</P>
				<p>노래에 나온 칵테일들 어떤 맛인지 궁금하거나 집에서 만들어보기 위해 레시피를 알아보고 싶다면, 저희 마텐더
					홈페이지를 조금 더 탐색해보시는 것을 추천드리면서 다음 글에서 만나요!</p>
				<br> <br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
	<!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  --><!--  -->

</body>
</html>