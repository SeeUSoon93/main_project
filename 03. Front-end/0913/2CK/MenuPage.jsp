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
	<div class="Group">
		
		<div class="Menugroup">
			
			<div class="cockimg">
				<img src="./img/섹스온더비치.PNG" class="img">
			</div>
		
			<div class="contents">
			
			
			</div>
		
	</div>
	
	
	<!-- 재료, 레시피 정보 -->
	<div class="info">
			
		<div class="meterial">
				
			<!-- 재료들 넣기 -->
						
		</div>
				
		<div class="method">
				
			<!-- 레시피 설명 넣기 -->
			
		</div>
		
	</div>
	
	
	<!-- 댓글 -->
	<br><br><br><br><br><br><br><br><br>
	<h3>댓글</h3>
	<div class="re">
	
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