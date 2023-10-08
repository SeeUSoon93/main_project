<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-작품에 나온 칵테일 이야기</title>
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
<!--여기--><div id="webzinebanner" style="background-image: url(./img/Webzine/webzineBanner02.png);">
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
			<h1>작품에 나온 칵테일 이야기</h1>
			<h2 style="color: #8b8b8b;">화려함 속에 숨겨진 주인공의 사랑을 만나는 시간</h2>
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
				<p>다양한 작품 속 칵테일 만나기 두 번째 시간,</p>
				<p>지난번 영화 속 칵테일 이야기들이 반응이 좋아 그에 이어 이번에는 다른 작품 속 칵테일에 대해 이야기를 해볼까 하는데요,</p>
				<p>이번에 만날 작품은 바로바로 &lt;위대한 개츠비&gt;입니다.</p>
				<br><img
					src="./img/Webzine/webzine02.png"
					width="100%"> <br>
				<P>다들 위대한 개츠비 하면 생각나는 이 유명한 장면 아시죠?</P>
				<P>제 친구들 중 영화를 보지 않은 경우도 알고있을 정도로 유명한 장면인데요,</P>
				<P>저 또한 이 영화를 n번 봤을 정도로 영화 속 영상미에 푹 빠져있는 작품이기도 합니다.</P>
				<br>
				<p>위대한 개츠비는 소설 원작인 작품으로 소설에서 영화보다 조금 더 풍부한 내용을 만나볼 수 있는데요,</p>
				<p>소설은 이스트에그에 머물며 개츠비의 파티에 초대되는 닉의 시점으로 전개가 이루어집니다.</p>
				<p>파티를 방문한 닉은 개츠비를 둘러싼 무성한 소문들에 대한 진실과 그가 이름과 신분을 바꾸고 ‘개츠비’라는 익명 뒤에 숨은 이유가 바로 사랑을 위한 것임을 알게 됩니다. </p>
				<p>개츠비는 그가 사랑하는 여인, 데이지에게 본인의 존재를 알리기 위해 밤마다 성대한 파티를 열었던 것이었죠.</p>
				<br>
				<p>위대한 개츠비를 읽다 보면 챕터 7장에서 이 글의 주인공을 만나볼 수 있는데요,</p>
				<p>등장인물들이 함께 플라자 호텔에서 민트 줄렙을 마시는 부분은 소설 전체를 통틀어 가장 팽팽한 긴장감이 감도는 부분이라고 할 수 있습니다.</p>
				<p>데이지의 남편 톰은 집요하게 개츠비의 정체를 추궁하고, 개츠비는 톰에게 당신 아내가 줄곧 사랑해온 사람은 자신이라고 말을 합니다.</p>
				<p>데이지는 이 긴장감을 해소해보고자 민트 줄렙을 만들어 주겠다고 말하며 남편 톰에게 호텔 카운터에서 민트 줄렙을 만들 얼음과 민트를 가져오라고 합니다.</p>
				<p>바로 이 대사와 함께 말이죠.</p>
				<br>
				<img src="https://static.wixstatic.com/media/9d3469_5311af3438ba44feabb9dcf96e7780e1~mv2.png/v1/fill/w_538,h_266,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9d3469_5311af3438ba44feabb9dcf96e7780e1~mv2.png" class="cockStoryIMG">
				
				<br>
				<div id="dlsdyd">
					<br>
					<p>"톰, 위스키 좀 따 줘요."<br> 그녀가 말했다.<br> "민트 줄렙을 만들어 드릴게요. 그러면 자기 자신이 그다지 바보스러워 보이진 않겠죠. 이 민트를 좀 봐요!“</p>
					<br>
				</div>
				<br>
				<br>				
				<p>여기서 등장하는 민트줄렙은 어떤 칵테일일까요?</p>
				<p>민트줄렙은 역사가 아주 오래된 최고령 IBA 공식 칵테일로 16세기 즈음에는 소화제로 만들어 마시던 것을 1700년대 후반 칵테일로 발전시켜 1938년 켄터키더비(경마대회) 공식 음료로 지정된 것이 오늘날의 모습이 된 것이라고 합니다.</p>
				<p>더비가 열리는 주말 이틀 동안 매년 약 12만잔의 민트 줄렙이 제공될 정도였다고 하네요.</p>
				<br>				
				<p>그렇다면 줄렙은 무엇일까요?</p>
				<p>줄렙의 사전적 의미는 “Whisky에 설탕 · 박하 등을 넣은 청량음료”를 말하는 것으로 ,페르시아어로 ‘장미 나무’라는 뜻을 가진다고 합니다. 초기에는 장미꽃으로 맛을 낸 물에 알코올을 섞은 드링크를 줄렙이라고 불렀다고 하네요. 줄렙의 종류는 럼을 베이스로 한 럼 줄렙, 브랜디를 베이스로 한 죠지아 민트 줄렙, 과거에는 보르드의 적포도주나 마딜라 와인, 쉐리 등을 베이스로 한 줄렙 등으로 다양하다고 합니다.</p>
				<br>
				<p>하지만 줄렙중 가장 유명한 것이 바로 이 글의 주인공 ‘민트 줄렙’인데요, 민트 잎이 포인트라고 하니 집에서 만들어 드실 때도 민트 잎은 꼭 챙겨서 만들어보시길 바라요.</p>
	
				<br><br>
				<p><b>[IBA 레시피]</b></p>
				<p>버번 위스키 1 1/2oz</p>
				<p>설탕 1tsp</p>
				<p>물 2tsp</p>
				<p>민트잎 4~6장</p>
				<br>
				<p>1. 콜린즈 글래스에 민트 잎을 3, 4장 넣고, 설탕과 설탕이 녹을 정도의 소량의 물을 넣은 후, 스푼으로 민트잎을 으깨어서 향을 내고 단맛을 낸다.</p>
				<p>2. 잘게 부순 얼음을 넣고, 글래스의 표면에 서리가 생길 때가지 젖는다. 민트 잎으로 장식하면 완성.</p>
	
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
