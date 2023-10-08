<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-칵테일 도구 알아보기</title>
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
		<!--여기-->
		<div id="webzinebanner"
			style="background-image: url(./img/Webzine/webzineBanner04.png);">
			<div id="ani">
				<h1 id="mainsize"></h1>
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
	<!--여기-->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<br>
	<br>
	<div id="webzinebody">
		<div id="cockStoryTitle">
			<h1>칵테일 도구 알아보기</h1>
			<h2 style="color: #8b8b8b;">간단히 알아보는 칵테일의 기본_ 도구 편</h2>
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
				<p>
					칵테일에 흥미가 생겨 이 글을 방문해주신 여러분, 환영합니다.<br> 보통 요리나 커피도 그렇듯 먹고 마시는
					것에 관심을 가지기 시작하면 어떻게 만들어지는지가 궁금해지는것이 당연한 순서일 텐데요,<br> <br>
					가게에서 만드는 것을 보고 나도 집에서 한 번 만들어 보고 싶은데 어떤 도구를 준비해야하는지 모르겠다 하시는 분들은
					지금부터 이 글을 주목해 주시기 바랍니다.<br> <br> 그런 분들을 위해 준비한 이번시간 [간단히
					알아보는 칵테일의 기본]의 주제는 바로바로 칵테일의 도구 입니다. <br> <br>
					<br><hr id="rnqnstjs" width="100px" size="6px" color="#474747">
					<br><br>
					 <b>첫
						번째, 지거(Jigger)</b>
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/9d3469_d73b6258900c4d169e757352825d66b5~mv2.png/v1/fill/w_433,h_252,al_c,lg_1,q_85,enc_auto/9d3469_d73b6258900c4d169e757352825d66b5~mv2.png"
					class="cockStoryIMG"> <br>
				<P>
					지거는 음료 만들기의 가장 첫 걸음, 계량을 위해 필요한 도구라고 할 수 있습니다. 두 개의 작은 깔대기 모양 붙어 있는
					형태로 만들어진 이 도구는 긴 쪽이 1.5oz(약 45ml), 짧은 쪽이 1oz(약 30ml)의 용량으로 보통 1지거는
					하면 1.5oz를 의미합니다. 표준형 지거를 가지고 다양한 용량을 만들고 싶은 경우 30ml 부분을 기준으로 약 절반
					높이까지 채우면 1/3oz(10ml), 그 상태로 위쪽으로 절반을 더 채우면 1/2oz(15ml), 다시 절반을 더
					채우면 3/4oz(22.5ml)가 되고, 아래쪽으로 그 절반만 채우면 1/4oz(7.5ml), 다시 그 절반은
					1/8oz(3.75ml)가 됩니다. <br> <br> <br><hr id="rnqnstjs" width="100px" size="6px" color="#474747">
					<br><br><b>두 번째, 셰이커(Shaker)</b>
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/9d3469_e60c856bb40b4828ab145bc01e4cc931~mv2.png/v1/fill/w_279,h_279,al_c,lg_1,q_85,enc_auto/9d3469_e60c856bb40b4828ab145bc01e4cc931~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					캡(cap), 스트레이너(strainer), 바디(body) 세 부분으로 이루어져 있고 주로 스테인리스 셰이커를
					사용합니다. 셰이커 사용시 주의할 점은 바디에 얼음과 재료를 채우고 스트레이너를 씌운 후 캡을 덮어야 한다는 점입니다.
					스트레이너에 캡을 씌운 상태로 바디에 장착하게 되면 일단 제대로 결합되지 않을 가능성이 높아지고, 셰이킹 중 내용물이
					공기를 흡수하면서 셰이커 안의 압력이 낮아져 셰이킹 후 캡이 잘 안 열리는 상황이 발생할 수 있습니다. 반드시 스트레이너
					먼저, 그 다음 캡 순서로 결합해야 함 주의!<br> 셰이커의 종류에는 코블러 셰이커, 보스턴 셰이커, 프렌치
					셰이커가 있습니다. <br> <br> <br><hr id="rnqnstjs" width="100px" size="6px" color="#474747">
					<br><br><b>세 번째, 바 스푼과 머들러 (Bar Spoon &
						Muddler)</b>
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/9d3469_8d90539f93da4c7485b63b062e43367f~mv2.png/v1/fill/w_296,h_312,al_c,lg_1,q_85,enc_auto/9d3469_8d90539f93da4c7485b63b062e43367f~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					바 스푼은 한쪽은 스푼, 가운데는 꽈배기처럼 배배꼬인 모양, 반대쪽 끝은 주로 포크가 달려있는 것이 특징입니다. 가운데
					꽈배기처럼 꼬인 모양은 스터를 하는 경우 한쪽 방향으로 젓기 쉽게 하기 위해서이고 한쪽 끝이 포크모양인 이유는 주로
					가니시를 집어 올리거나 하는 용도로 사용합니다.<br>
					<br> 여기서 스터(stir)란 원주의 풍미를 유지하면서 재료들을 충분히 섞기 위해 사용하는 방식으로 너무
					거칠거나 오래 저어 술이 과하게 희석되지 않도록 주의해야 합니다. 칵테일 제조법 중에 원리적으로도, 기술적으로도 가장
					어렵고 많은 연습이 필요한 기술이라고 하네요.<br>
					<br> 머들러는 보통 나무나 플라스틱으로 만드며, 허브잎이나 과일 또는 잔 밑에 가라앉은 설탕을 으깨서 향을
					끌어내는 용도로 주로 사용합니다. 힘을 너무 지나치게 주면 잔이 깨질 수 있으니 사용 시 주의해 주세요. <br>
					<br> <br><hr id="rnqnstjs" width="100px" size="6px" color="#474747">
					<br><br><b>네 번째, 스트레이너(Strainer) & 스퀴저(squeezer)</b>
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/9d3469_0af4a706c4f14040836fe8131c1c52a5~mv2.png/v1/fill/w_589,h_322,al_c,lg_1,q_85,enc_auto/9d3469_0af4a706c4f14040836fe8131c1c52a5~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					스트레이너는 주로 얼음과 함께 셰이킹한 액체의 재료를 거르기 위한 거름 도구로 쓰입니다.<br>
					<br> 스퀴저는 칵테일을 만들 때 다양한 과일즙이 사용되게 되는데, 시중에 판매하는 과일즙을 사용해도 문제는
					없지만 갓 만들어낸 신선한 과일 본연의 맛을 가진 즙을 이용해 칵테일의 맛을 풍성하게 만들어주기 위해 사용하는
					도구입니다. 스퀴저로 짜낸 주스는 냉장보관해야하며 스퀴저는 사용한 즉시 세척해주는 것이 좋습니다.<br>
					<br>
					<br>
					<br><hr id="rnqnstjs" width="100px" size="6px" color="#474747">
					<br><br>
					<br> 지금까지 [간단히 알아보는 칵테일의 기본], 칵테일을 만드는데 필요한 도구들에 대한 소개를
					해드렸습니다.<br>
					<br> 이 글을 보고 집에서 칵테일 만들기에 도전해봐야겠다는 생각이 드셨으면 좋겠네요.<br>
					<br> <br> <br> <br> <br> <br> <br>
					<br>
			</div>
		</div>
	</div>
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->
	<!--  -->

</body>
</html>