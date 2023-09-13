<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 메뉴페이지</title>

<link rel="stylesheet" href="./css/MenuPage.css">

</head>
<body>
	<%@ include file="MainHeader.jsp"%>
	
	<!-- 칵테일 이미지, 정보 -->
		
		<div class="Menugroup">
			
			<div class="cockimg">
				<img src="./img/블루하와이안.PNG" class="img">
			</div>
		
		<div class="contents">
				
				<div class="namebox">
					<h4 class="name">블루하와이안</h4>
				</div>
				
				<div class="textbox">
					<h4 class="text">
					 블루하와이 칵테일에 코코넛 크림이 들어가있습니다.
					</h4>
				</div>
				
				
				<div class="Alcbox">
					<div class="alc">
					 	<h4 class="alctext">도수 : 40°</h4>
					</div>
					
				</div>
				
				<div class="likebox">
					<h4 class="like">❤ 30 🏷 50 </h4>
				</div>
		</div>
		
	</div>

	<div class="Group">
	
	<!-- 재료, 레시피 정보 -->
	<div class="info">
		<h2>재료 정보</h2>
		<div class="meterial">
		
		
			<div class="display">
				<!-- 재료 설명 넣기 -->
				
					<div class="metname">
						<h3 class="metinfo1">
						
						얼음<br>
						레몬<br>
						마라스키노 체리<br>
						파인애플<br>
						파인애플 주스<br>
						설탕 시럽<br>
						블루 큐라소<br>
						보드카<br>
						화이트 럼<br>
						
						</h3>
					</div>
					<div class="amount">
						<h3 class="metinfo2">						
						200gram<br>
						15ml<br>
						1개<br>
						1wedge<br>
						90ml<br>
						15ml<br>
						15ml<br>
						20ml<br>
						20ml<br>
						
						</h3>
					</div>
				
				
			</div>
			
			
			
		</div>
				
		<h2>레시피 설명</h2>
		<div class="method">
			<h3 class="methinfo">
			1. 셰이커에 얼음을 채운다. <br>
			2. 화이트 럼 20ml, 보드카 20ml, 블루 큐라소 15ml를 넣는다. <br>
			3. 파인애플 주스 90ml, 레몬 주스 15ml, 설탕 시럽 15ml를 넣는다. <br>
			4. 원하는 만큼 흔들거나 저어 허리케인 글라스에 붓는다. <br>
			5. 마라스키노 체리 또는 파인애플 조각으로 장식한다. <br>
			</h3>
			
		</div>
		
	</div>
	
	
	<!-- 댓글 -->
	<br><br><br><br><br><br><br><br><br>
	<h2>댓글</h2>
	<div class="re">
	
		<div class="write">
			
			<div class="human">
				<img src="./img/칵테일 일러스트.png" width="40px" height="50px">
			</div>
			
			<div class="message">
				
			</div>
			
			<div class="posts">
				<img class="send" src="./img/send.png" width="40px" height="40px">
			</div>
			
		</div>
	
	</div>
	
	
	
	
	<!-- 비슷한 칵테일 -->
	<br><br><br><br><br><br><br><br><br>
	<h3>유사한 칵테일</h3>
	<div class="similar">
		
		
		
				<div class="next">
						<img class="nextimg" src="./img/next1.png" width="50px" height="70px">
				</div>
		
		
		
				<%for(int i=1; i<=4; i++) { %>
				<div class="recipe">
				<a href="MenuPage.jsp">
					<div class="recipediv">
						<img class="recipeImg" src="./img/블루하와이안.PNG">
					</div>


					<div class="recipetitle">
						<div class="recipename1">블루 하와이안</div>

						<div class="recipename2">❤ 30 🏷 50 🗨 30</div>
					</div>
				</a>
				</div>
				<% } %>
				
				
				
				<div class="next">
						<img class="nextimg" src="./img/next2.png" width="50px" height="70px">
				</div>

		</div>
	
	
	
	
	</div>
	
	<br><br><br>
	<%@ include file="footer.jsp"%>
</body>
</html>