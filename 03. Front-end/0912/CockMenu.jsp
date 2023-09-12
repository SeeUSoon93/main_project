<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-전체레피시</title>

<script src="https://code.jquery.com/jquery-latest.js"></script>

<link rel="stylesheet" href="./css/CockMenu.css">

</head>
<body>
	<%@ include file="MainHeader.jsp"%>

	<!-- <div class="banner">banner</div> -->

	<!--
		CateAndGroup : 레시피 분류 목록과 카테고리 목록을 전체 감싸는 .class
		group : 분류 목록들을 감싸는 .class
		CateAndRecipe : 카테고리 목록과 레시피 목록을 감싸는 .class
		Category : 카테고리 목록을 감싸는 .class
	-->
	<div class="CateAndGroup">
		<div class="group">
			
			<div class="box1">
			
			<div class="groupBox1">
				<img src="./img/logo1.png" width="50px" height="50px">
			</div>
				
			<div class="groupBox2">
				<img src="./img/logo2.png" width="50px" height="50px">
			</div>
			
			<div class="groupBox3">
				<img src="./img/logo3.png" width="50px" height="50px">
			</div>
			
			</div>
			
	
			<div class="box2">
				<div class="titlemom">
				<div class="boxtitle">전체 레시피</div>
				<div class="boxtitle">기존 레시피</div>
				<div class="boxtitle">도전 레시피</div>
				</div>
			</div>
		
		</div>
		
		<br><br>
		<div class="CateAndRecipe">
			<div class="categoryBox1">
				<div class="categoryBox2">
					<div class="title">🍹 칵테일 찾기 🍹</div>
					
					<div class="baseAlcohol">베이스 술 ▼</div>
					<div class="menubox1">
						<input type="checkbox" name="base" value="">보드카<br>
						<input type="checkbox" name="base" value="">진<br>
						<input type="checkbox" name="base" value="">위스키<br>
						<input type="checkbox" name="base" value="">럼<br>
						<input type="checkbox" name="base" value="">데킬라<br>
					</div>

					<div class="ingredient">재 료 ▼</div>
					<div class="menubox2">
					<input type="checkbox" name="base" value=""> 시럽<br>
					<input type="checkbox" name="base" value=""> 주스<br>
					<input type="checkbox" name="base" value=""> 탄산수<br>
					<input type="checkbox" name="base" value=""> 토닉워터<br>
					<input type="checkbox" name="base" value=""> 에너지드링크
					</div>

					<div class="dangdo">당 도 ▼<br></div>
					<div class="menubox3">
						<input type="checkbox" name="base" value=""> 10%<br>
						<input type="checkbox" name="base" value=""> 20%<br>
						<input type="checkbox" name="base" value=""> 30%<br>
						<input type="checkbox" name="base" value=""> 40%
					</div>

				</div>
				
				
				<%for(int i=1; i<=50; i++) { %>
				<div>
					 <div class="cocktailsBox">
					 
					 
						<div class="recipe">
						
							<div class="recipediv">
							<img class="recipeImg" src="./img/블루하와이안.PNG">
							</div>
							
							
							<div class="recipetitle">
								<div class="recipename1">
								블루 하와이안
								</div>
								
								<div class="recipename2">
								❤ 30 🏷 50 🗨 30
								</div>								
						</div>
							
						</div>
				<% } %>		
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./js/CockMenu.js"></script>
</body>
</html>