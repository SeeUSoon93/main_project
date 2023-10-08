<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-거북이만큼 오래 산 칵테일</title>
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
			style="background-image: url(./img/Webzine/webzineBanner06.png);">
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
			<h1>거북이만큼 오래 산 칵테일</h1>
			<h2 style="color: #8b8b8b;">칵테일 사제락과 영화 ‘벤자민 버튼의 시간은 거꾸로 간다’</h2>
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
				<p>한 예능 프로그램(=나 혼자 산다)에서 누가(=전현무씨..) 그런 말을 하더라고요. ‘세월은 흐르는 것이 아니라 쌓이는 것이다.’ 어떤 드라마에서 나온 말이라고 하면서요.</p>
				<br>
				<img src="https://static.wixstatic.com/media/662565_66d51f8e25fa428e9b4a3978eb3d153c~mv2.jpg/v1/fill/w_826,h_413,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/662565_66d51f8e25fa428e9b4a3978eb3d153c~mv2.jpg" class="cockStoryIMG">
				<br>
				<img src="https://static.wixstatic.com/media/662565_a9c6a0c24d3d43ebaec7ac99c9740916~mv2.jpg/v1/fill/w_601,h_300,al_c,q_80,enc_auto/662565_a9c6a0c24d3d43ebaec7ac99c9740916~mv2.jpg" class="cockStoryIMG">
				<br>
				<P>우연히 들은 말이었는데, 예상치 못하게 기억에 오래 남더라고요. 생각해볼수록 시간은 쌓이는 게 맞는 것 같아요. 평소 자주 하는 고민이나 생각, 웃을 때 잡히는 주름까지도 수많은 하루하루가 이어지고 겹쳐지며 만들어진 것일 테니까요.<br>
				만약에 겉모습만큼은 시간의 축적에서 벗어난 삶이 있다면, 그런 삶은 어떤 모습을 하고 있을까요? 오늘 소개해드릴 작품이 이 질문에 대한 나름의 답이 될 수도 있을 것 같아요. 바로 영화 ‘벤자민 버튼의 시간은 거꾸로 간다’입니다.<br>
				‘나를 찾아줘’ 등의 대표작으로 유명한 데이비드 핀처 감독의 2008년 작으로, 단편소설 ‘벤자민 버튼의 기이한 사건(원제: The Curious Case of Benjamin Button)’이 원작입니다.<br>
				<br>
				원작 소설은 냉소적이면서도 (마냥 가볍지만은 않지만)코믹한 분위기에, 몇 십년에 걸친 주인공의 일대기가 60쪽 정도의 분량 안에 압축적으로 서술되어 있어요.<br>
				영화의 경우, 기본적인 설정은 소설에서 따왔지만 각색을 많이 거친 편이에요. 시대적 배경, 주변 인물과의 관계 등 많은 부분에서 소설과 차이가 있습니다.<br>
				<br>
				특히 벤자민의 아버지는 영화에서 많이 각색되어 소설과는 아예 다른 캐릭터가 됐죠. 이름도 소설에서의 이름인 ‘로저 버튼’이 아니라 ‘토마스 버튼’으로 바뀌었고, 원작과는 다르게 벤자민이 태어나자마자 그를 요양시설에 버리고 떠납니다. 그리고 세월이 지난 후, 비록 겉모습은 노인이지만 장성한 청년이 된 아들과 우연히 다시 만나게 됩니다.<br>
						토마스는 벤자민이 자신의 아들이라는 걸 눈치채고, 친부라는 정체를 숨긴 채 벤자민을 자신의 단골 술집으로 데려갑니다. 그러고는 능숙하게 바텐더에게 주문합니다.<br><br>
								
				</p>
								<div id="dlsdyd">
					<br>
					<p>“사제락 두 잔 주시오. 브랜디 말고, 위스키로<br>(Sazerac for the both of us. With whiskey, not brandy.).”</p>
					<br>
				</div>
				<br>
				<img src="./img/Webzine/webzine06.png" width="100%"> <br>
				<br>
				<p>아무래도 술을 한두번 마신 게 아닌 것 같습니다. 짬-바…아니 칵테일 고수의 관록과 여유가 드러나네요. 사실 저는 이 장면을 보면서 ‘그냥 술꾼일 뿐인데 단골 바에 가서 저렇게 주문하니까 왠지 있어보인다’고 생각했는데요... 아무래도 사제락을 주문해서 더 그렇게 느껴진 것 같아요. 국내에선 인지도가 그리 높지 않지만, 사제락은 클래식 칵테일의 대명사거든요. 칵테일계의 시조새라고나 할까요.<br>
				<br>
				칵테일이 언제 최초로 만들어졌는지는 정확히 알 순 없지만 남아있는 기록들을 보면 대략 18세기 말~19세기 초 정도로 추정되는데, 사제락은 19세기 중반 즈음 탄생했다고 해요. 사제락은 원래 코냑(브랜디의 한 종류)을 생산하던 한 프랑스 가문의 이름인데, 여기서 만든 코냑 ‘사제락 드 포지옛 필스(Sazerac De Forge Et Fils Cognac)’가 미국에서도 인기를 끌게 됩니다.<br>
				</p>
				<br> <img
					src="https://static.wixstatic.com/media/662565_88fdc45f61a34cb89a123a1624e11d00~mv2.png/v1/fill/w_462,h_500,al_c,lg_1,q_85,enc_auto/662565_88fdc45f61a34cb89a123a1624e11d00~mv2.png"
					class="cockStoryIMG">
				<br>
				<p>미국 뉴올리언스에 있던 술집 ‘THE SAZERAC HOUSE’은 사제락 코냑을 수입해 판매하던 곳이었는데요. 해당 코냑에 페이쇼드 비터스와 각설탕, 압생트를 섞어 만든 칵테일을 만들어 팔기 시작했고 이게 칵테일 사제락의 시초가 되었다고 하네요. 이후 19세기 후반에는 병충해인 필록세라(진딧물의 일종)의 영향으로 꼬냑을 구하기 어려워지자 꼬냑 대신 호밀로 만든 라이 위스키를 베이스로 쓰기도 했답니다. 현재도 판매되고 있는 라이 위스키 ‘사제락’이 여기에 기원을 두고 있어요. 해당 제품을 만드는 증류회사 사제락은 바로 사제락 하우스가 역사를 이어오며 만들어진 회사이고요.<br>
				<br>
				어떻게 보면 칵테일 사제락은 단순한 칵테일이 아니라 170년가량의 시간이 스며있는, 미국 근현대사의 산증인, 아니 산증주(?)인 셈이죠. 겉으로만 보면 시간의 축적을 느낄 수 없는 벤자민의 삶과는 정반대로 보이는 칵테일 같기도 해요. 주인공의 아버지가 그와 만날 때마다 마시던 칵테일이라, 극중에서 상징적인 의미가 있는 듯도 하고요. 비범하지만 누구보다 평범한 세월을 원했던 주인공에게 건넬 만한 한잔인 것 같네요.<br>
				<br>
				긴 세월이 쌓여 만들어진 달콤씁쓸한 맛과 향을 즐기고 싶다면, 오늘의 칵테일로 사제락 한잔 어떨까요?</p>





				<br> <br> <br> <br> <br> <br> <br>
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
