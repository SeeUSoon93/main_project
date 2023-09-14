<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 인기순위</title>
<link rel="stylesheet" href="fontstyle.css" />

<link rel="stylesheet" href="./css/CockRank.css">
</head>
<body>
	<%@ include file="MainHeader.jsp"%>

	<div class="RankGroup">

		<h3>전체레시피 순위</h3>

		<div class="cocktailsBox">
		
		
		
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
	
	
	
	
	<div class="RankGroup">

		<h3>도전!레시피 순위</h3>

		<div class="cocktailsBox">
		
		
		
				<div class="next">
						<img class="nextimg" src="./img/next1.png" width="50px" height="70px">
				</div>
		
		
		
				<%for(int i=1; i<=4; i++) { %>
				<div class="recipe">

					<div class="recipediv">
						<img class="recipeImg" src="./img/블루하와이안.PNG">
					</div>


					<div class="recipetitle">
						<div class="recipename1">블루 하와이안</div>

						<div class="recipename2">❤ 30 🏷 50 🗨 30</div>
					</div>

				</div>
				<% } %>
				
				
				
				<div class="next">
						<img class="nextimg" src="./img/next2.png" width="50px" height="10px">
				</div>

		</div>
		
	
	</div>

	<br><br><br>

			<%@ include file="footer.jsp"%>
</body>
</html>