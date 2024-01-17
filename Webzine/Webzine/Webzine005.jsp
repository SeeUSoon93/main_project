<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-편의점 간단 칵테일 레시피</title>
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
				<li><a href="../CockMenu.jsp" data-hover="전체메뉴"><div>전체메뉴</div></a></li>
				<li><a href="../CockRank.jsp" data-hover="인기순위"><div>인기순위</div></a></li>
				<li><a href="../WebMagazine.jsp" data-hover="칵테일 이야기"><div>칵테일
							이야기</div></a></li>
				<li><a href="../WebBoard.jsp" data-hover="커뮤니티"><div>커뮤니티</div></a></li>

				<div class="pagebarmom">
					<%
					MemberVO login = (MemberVO) session.getAttribute("loginInfo");
					if (login != null) {
						System.out.println("현재 로그인한 아이디(메인헤더) : " + login.getNickName());
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
			style="background-image: url(./img/Webzine/webzineBanner05.png);">
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
			<h1>편의점 간단 칵테일 레시피</h1>
			<h2 style="color: #8b8b8b;">누구나 간단하게 만들수 있는 편의점 칵테일 레시피 5</h2>
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
					칵테일 한 잔에 만원?! 너무 비싼 거 아냐?😵‍<br> 칵테일바까지 가는 것도 너무 귀찮고 부담스러워ㅠㅠ😭<br>

					쉽고 편하게 가성비 있는 칵테일을 즐길 수 있는 방법은 없을까?🤔 <br> <br> 왜 없나요?
					우리에겐 없는 게 없는 바로 그 곳! 편의점이 있는걸요<br> 최근 들어 스테디셀러부터 HOT한 신상까지,
					다양한 종류의 양주를 가까운 편의점에서 만나볼 수 있게 되었는데요,<br> 덕분에 홈텐딩*(홈+바텐딩의
					합성어)에 대한 진입장벽 또한 낮아지게 되었죠.<br> 또 양주의 경우 기본적으로 한 잔의 칵테일을 만드는 데
					많은 양이 필요하지 않아, 한번 사 두면 오랫동안 두고 마실 수 있어 가성비도 매우 좋다는 사실!<br> 오늘
					여러분께 소개해 드릴 컨텐츠는 바로 이 편의점 양주를 이용해 쉽게 만들 수 있는 칵테일 입니다.<br> 지금부터
					전문적인 도구가 없어도! 편의점에서 쉽게 구할 수 있는 재료만으로 휘휘 저어 뚝딱 만들 수 있는 편의점 칵테일 레시피를
					소개해 드릴게요!<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br> <b>1. 하이볼</b><br> 잭다니엘or짐빔+진로토닉워터+레몬즙
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/b5e94e_5d1632345df541dca51f191e0eeccd74~mv2.png/v1/fill/w_519,h_210,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b5e94e_5d1632345df541dca51f191e0eeccd74~mv2.png"
					class="cockStoryIMG"> <br>
				<P>
					‘간단하게 만들 수 있는 칵테일’ 하면 떠오르는 바로 그 이름, ‘하이볼’! 넓은 의미에서 하이볼은 증류주에 탄산수를
					첨가하는 모든 종류의 칵테일을 지칭하는데요, 대중적으로는 위스키에 탄산수를 섞은 칵테일로 통칭되고는 합니다. 마침
					편의점에서 가장 흔히 찾아볼 수 있는 칵테일 기주 또한 바로 이 위스키죠! 특히 ‘잭 다니엘스’과 ‘짐빔’은 전국의
					편의점에서 쉽게 구매할 수 있는 위스키 브랜드인데요, 애플, 허니 등 다양한 플레이버드 제품이 출시되었고, 신제품 또한
					편의점에서 바로바로 만나볼 수 있는 것으로 유명합니다. 얼음 가득 채운 하이볼 잔에 원하는 맛의 위스키와 토닉워터를
					1:3 에서 1:4 비율로 취향껏 따라 주고, 레몬즙은 기호에 맞게 살짝 추가해 주세요. 시원하고 깔끔한 맛의 하이볼이
					완성됩니다! <br> <br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br>
				<b>2. 봄베이진토닉</b><br> 봄베이사파이어+진로토닉워터+레몬즙
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/b5e94e_d5c887915cab4242a577ce4e56063bab~mv2.png/v1/fill/w_493,h_286,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b5e94e_d5c887915cab4242a577ce4e56063bab~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					말 그대로 진과 토닉으로 이루어진 칵테일 ‘진토닉’. 진 중에서도 ‘봄베이 사파이어’는 특유의 강렬한 향과 풍미로
					유명한데요, 특히 진토닉으로 만들어 마시면 그 매력이 배가 된다고 하죠. 그리고 당연히 편의점에서도 봄베이 사파이어를
					쉽게 찾아볼 수 있고요! 봄베이 사파이어를 이용한 진토닉 제조 비율은 하이볼과 마찬가지로 진과 토닉을 1:3 에서 1:4
					비율로 섞어 주는 것이 이상적이라고 하네요. 오늘 저녁에는 봄베이 사파이어와 함께 진토닉 한 잔 어떠신가요?<br>
					<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br>
				<b>3. 스크류드라이버</b><br> 스미노프+오렌지주스
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/b5e94e_800be74b53a748d19dcad87b5328e432~mv2.png/v1/fill/w_479,h_284,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b5e94e_800be74b53a748d19dcad87b5328e432~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					간단한 재료지만 맛은 200% 보장합니다! 그 주인공은 바로 오렌지 맛 칵테일 계의 대표주자 ‘스크류드라이버’ 인데요,
					높은 도수에도 불구하고 술 맛 신경쓰지 않고 홀짝홀짝 마실 수 있는 ‘레이디 킬러’ 칵테일로도 유명합니다. 스크류드라이버
					제조를 위해 필요한 재료는 보드카, 오렌지주스, 얼음. 단 3가지인데요, 이 때 편의점에서 만나볼 수 있는 보드카
					중에서는 대중적으로 이름이 잘 알려져 있지는 않지만 가성비와 품질 모두 보장된 ‘스미노프 레드’를 추천해요. 보드카와
					오렌지주스를 1:2 비율로 섞어 내는 것이 국제 바텐더 협회의 공식 기준이지만, 취향 따라 보드카와 오렌지 주스의 비율을
					자유롭게 조절해 보시는 것도 좋습니다.<br> <br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br>
				<b>4. 깔루아밀크</b><br> 깔루아+우유
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/b5e94e_ccbde53a52dd44309bddc0ded7767928~mv2.png/v1/fill/w_478,h_233,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b5e94e_ccbde53a52dd44309bddc0ded7767928~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					커피 맛 리큐르인 ‘깔루아’와 우유만으로 뚝딱 만들 수 있는 ‘깔루아밀크’는 제조법도 굉장히 쉽고 마시기에도 부담없는
					도수로 많은 사랑을 받고 있는 칵테일입니다. 깔루아와 우유의 비율을 조절하며 자신의 취향에 딱 맞게 마셔볼 수 있죠.
					카페인과 알콜을 동시에 섭취할 수 있는 어른의 커피우유랍니다!<br> <br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br>
				<b>5. 버번콕</b><br> 짐빔+코카콜라
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/b5e94e_8cfd8679fded4a04a0871bdab8aeec31~mv2.png/v1/fill/w_511,h_177,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b5e94e_8cfd8679fded4a04a0871bdab8aeec31~mv2.png"
					class="cockStoryIMG"> <br>
				<p>
					미국 위스키의 한 종류의 ‘버번’과 콜라를 섞어 낸 칵테일 ‘버번콕’! 40도 이상의 높은 도수를 가진 위스키인 버번은
					특유의 묵직한 느낌 때문에 콜라에 섞어서 '버번콕' 으로 마시기 딱 좋답니다. 버번콕 제조에는 버번 위스키의 대표주자,
					‘짐빔’이 주로 활용되는데요, 앞서 말했듯 짐빔은 편의점에서 쉽게 만나볼 수 있는 대중적인 위스키 브랜드 중 하나죠!
					기호에 따라 비율을 자유롭게 조절할 수 있지만, 보통 얼음을 채운 글라스에 짐빔과 콜라를 1:2 정도로 따라 준다고
					하네요. 이 때 팁은 칵테일을 섞는 과정에서 탄산이 날아가지 않도록 서서히 저어 주는 것이라고 합니다!<br>
					<br> <br>
				<hr id="rnqnstjs" width="100px" size="6px" color="#474747">
				<br>
				<br>
				<br> <br>지금까지 쉽고 간단하게 만들 수 있는 편의점 칵테일 레시피를 소개해 드렸어요.<br>

				어떤가요, 당장 만들어보고 싶지 않으신가요?<br> 그렇다면 지금 바로 집 앞 편의점으로 달려갈 준비 하세요!<br>
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
	<footer>
		<hr>
		<br>
		<div class="footer">
			<img src="./img/logo.png" class="footerlogo"> <br> (주)순이 <br>
			광주광역시 동구 SMHRD <br> 대표이사 : 순이 <br> <a
				href="https://open.kakao.com/me/matender">카톡으로 상담하기</a>
		</div>
		<br>
	</footer>
</body>
</html>