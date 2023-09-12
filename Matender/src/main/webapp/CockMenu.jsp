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

	<div class="banner">banner</div>

	<!--
		CateAndGroup : 레시피 분류 목록과 카테고리 목록을 전체 감싸는 .class
		group : 분류 목록들을 감싸는 .class
		CateAndRecipe : 카테고리 목록과 레시피 목록을 감싸는 .class
		Category : 카테고리 목록을 감싸는 .class
	-->
	<div class="CateAndGroup">
		<div class="group">
			<div class="groupBox">
				<a href="#">전체<br>레시피
				</a>
			</div>
			<div class="groupBox">
				<a href="#">기존<br>레시피
				</a>
			</div>
			<div class="groupBox">
				<a href="#">도전<br>레시피
				</a>
			</div>
		</div>
		<div class="CateAndRecipe">
			<div class="categoryBox1">
				<div class="categoryBox2">
					<div class="title">칵테일 찾기</div>
					<div class="baseAlcohol">베이스 술</div>
					<div class="menubox1">
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
						</ul>
					</div>

					<div class="ingredient">재 료</div>
					<div class="menubox2">
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
						</ul>
					</div>

					<div class="dangdo">당 도</div>
					<div class="menubox3">
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
						</ul>
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