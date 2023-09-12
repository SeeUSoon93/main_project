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

			<div class="groupBox">
				<img src="">
			</div>
				<!-- <a href="#">전체<br>레시피</a> -->
			<div class="groupBox">
			</div>
				<!-- <a href="#">기존<br>레시피</a> -->
			<div class="groupBox">
			</div>
				<!-- <a href="#">도전<br>레시피</a> -->
			</div>
			
	
			<div class="box2">
				<div class="titlemom">
				<div class="boxtitle">전체 레시피</div>
				<div class="boxtitle">기존 레시피</div>
				<div class="boxtitle">도전 레시피</div>
				</div>
			</div>
		
		</div>
		<div class="CateAndRecipe">
			<div class="categoryBox1">
				<div class="categoryBox2">
					<div class="title">🍹 칵테일 찾기 🍹</div>
					
					<div class="baseAlcohol">베이스 술 ▼<br></div>
					<div class="menubox1">
						<input type="checkbox" name="base" value="">보드카<br>
						<input type="checkbox" name="base" value="">진<br>
						<input type="checkbox" name="base" value="">위스키<br>
						<input type="checkbox" name="base" value="">럼<br>
						<input type="checkbox" name="base" value="">데킬라<br>
					</div>

					<div class="ingredient">재 료 ▼<br></div>
					<div class="menubox2">
					<input type="checkbox" name="base" value=""> 시럽<br>
					<input type="checkbox" name="base" value=""> 주스<br>
					<input type="checkbox" name="base" value=""> 탄산수<br>
					<input type="checkbox" name="base" value=""> 토닉워터<br>
					<input type="checkbox" name="base" value=""> 에너지드링크
					</div>

					<div class="dangdo">당 도 ▼<br><br></div>
					<div class="menubox3">
						<input type="checkbox" name="base" value=""> 10%<br>
						<input type="checkbox" name="base" value=""> 20%<br>
						<input type="checkbox" name="base" value=""> 30%<br>
						<input type="checkbox" name="base" value=""> 40%
					</div>

				</div>
				<div>
					<div class="cocktailsBox">
						<div class="recipe">1</div>
						<div class="recipe">2</div>
						<div class="recipe">3</div>
					</div>

					<div class="cocktailsBox">
						<div class="recipe">4</div>
						<div class="recipe">5</div>
						<div class="recipe">6</div>
					</div>

					<div class="cocktailsBox">
						<div class="recipe">7</div>
						<div class="recipe">8</div>
						<div class="recipe">9</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./js/CockMenu.js"></script>
</body>
</html>