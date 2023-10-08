<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-영화 속 칵테일 1편</title>
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
			style="background-image: url(./img/Webzine/webzineBanner03.png);">
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
			<h1>영화 속 칵테일 1편</h1>
			<h2 style="color: #8b8b8b;">거짓말로 더 유명해진 칵테일이 있다?!</h2>
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
				<p>사랑아 보영해, 병병병! 쿵 저 형철인데요!, 치자피즈 등등.. 단어나 어절의 순서를 바꿔 탄생한 수많은 드립
					중에서도, 유독 강렬한 존재감을 과시하는 명대사가 있습니다.</p>
				<br>
				<div id="dlsdyd">
					<br>
					<p>“모히또 가가지고 몰디브나 한 잔 할라니까”</p>
					<br>
				</div>
				<img src="./img/Webzine/webzine03.png" width="100%"> <br>
				<br>
				<P>
					2015년 개봉한 영화 ‘내부자들’을 봤어도, 보지 않았어도 알고 있는 그 대사. 이 한 줄의 대사로 인해 모히또는
					한국에서 특히 더 인지도 있는 칵테일이 되었죠.<br> 사실 이전에도 모히또는 이미 대중적인 인기를 자랑하고
					있는 칵테일 중 하나였습니다. 편의점과 카페에서 파는 무알콜 음료로, 아이스바로, 심지어 감자칩으로도 출시된 적이 있을
					정도니까요. <br>
				</p>
				<img src="https://newsimg.sedaily.com/2022/08/22/269WC7HHAF_5.jpg" class="cockStoryIMG">
				<br>
				<p>라임과 민트, 톡 쏘는 탄산수 그리고 설탕의 달달함까지. 푸른 바다가 떠오르는 시원하고 상큼한 맛은 대부분 큰
					호불호 없이 좋아할 만한 맛이죠! 그래서일까요, 모히또는 헤밍웨이의 ‘최애’ 칵테일이었던 것으로 유명한데요. 쿠바에
					머물던 시절 자주 들렀다는 술집 ‘라 보데기타 델 메디오(La Bodeguita del Medio)‘에는 “나의 모히또는
					라 보데기타에, 나의 다이키리는 엘 플로리디타에(My mojito in La Bodeguita, My daiquiri
					in El Floridita)”라고 적힌 헤밍웨이의 친필 문구가 액자로 걸려있다고 하는데....</p>
				<br> <img
					src="https://static.wixstatic.com/media/662565_3ee6b09378f14c069cad03fb02942b2e~mv2.jpg/v1/fill/w_826,h_379,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/662565_3ee6b09378f14c069cad03fb02942b2e~mv2.jpg"
					class="cockStoryIMG">
				<br>
				<p>
					사실은 손님들을 모으기 위해 거짓으로 꾸며낸 것이라고 해요. 친필 문구는 디자이너를 고용해 위조한 거고요. 당시 라
					보데기타의 사장이었던 마르티네즈 부부가 지인들과 가게 홍보 방안을 논의하다 농담으로 나온 이야기를 실행에 옮긴 거였죠.<br>
					지난 2012년에 라 보데기타의 창립자 앙헬 마르티네즈가 한 인터뷰에서 직접 진실을 밝혀 크게 논란이 됐어요.
				</p>
				<br> <img alt=""
					src="https://static.wixstatic.com/media/662565_de7fa0fa47014cb4a3213c48f9e43eef~mv2.png/v1/fill/w_454,h_140,al_c,q_85,enc_auto/662565_de7fa0fa47014cb4a3213c48f9e43eef~mv2.png"
					class="cockStoryIMG"><br>
				<img alt=""
					src="https://static.wixstatic.com/media/b5e94e_947765b4af274c528882aa3960fe3438~mv2.png/v1/fill/w_572,h_283,al_c,lg_1,q_85,enc_auto/b5e94e_947765b4af274c528882aa3960fe3438~mv2.png"
					class="cockStoryIMG">
				<br>
				<p>
					한 번 만든 가짜 문구로 쿠바 경제가 살아났다고 해도 과언이 아니네요. 쿠바를 사랑한 소설가, 그것도 ‘노인과 바다’를
					쓴 헤밍웨이와 찰떡 같이 어울려서 아무도 크게 의심하지 않았던 것 같기도 하고요! 여튼 맛있다는 게 중요한 거
					아니겠어요. <br>
					<br> <b>마지막으로, 모히또를 더 다양하게 즐기고 싶다면?</b> <br>기본적으로 모히또는
					민트, 라임주스와 탄산수를 주로 사용하는 럼 베이스 칵테일인데요. 여기에 럼 대신 데킬라를 넣으면 멕시칸 모히또가
					된답니다. 백종원 선생님은 깻잎과 소주로 만드는 깻잎 모히또 레시피를 소개하기도 했어요. 이외에도 코코넛 럼을 넣은
					코코넛 모히또, 원당 시럽(혹은 흑설탕)과 골드 럼을 사용한 더티 모히또 등 재료를 조금만 바꾸면 다양한 버전의 모히또를
					즐길 수 있어요. <br> <br> 시원함이 필요할 때, 바다의 청량함을 닮은 모히또 한잔 어떨까요?
				</p>





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
