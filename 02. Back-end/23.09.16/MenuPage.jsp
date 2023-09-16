<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.IngredientDAO"%>
<%@page import="com.smhrd.model.IngredientVO"%>
<%@page import="com.smhrd.model.CockDAO"%>
<%@page import="com.smhrd.model.AllVO"%>
<%@page import="com.smhrd.model.CockVO"%>
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

	<%
	/* 레시피 정보 불러오기 */
	System.out.println("디테일 페이지 왔냐?");
	String recipeNum = request.getParameter("recipeNum");
	System.out.println("조회할 레시피 번호 : " + recipeNum);
	AllVO recipeInfo = new CockDAO().recipeInfo(recipeNum);
	
	System.out.println("조회한 레시피 이름 : " + recipeInfo.getRecipeName());
	System.out.println("조회한 레시피 번호 : " + recipeInfo.getRecipeNum());
	System.out.println("조회한 레시피 도수 : " + recipeInfo.getCockAlc()+"도");
	
	/* 레시피 재료 불러오기 */
	
	List<IngredientVO> ingredientList = new IngredientDAO().ingredientList(recipeNum);
	System.out.println("재료 리스트 크기"+ingredientList.size());
	System.out.println("첫번째 재료 이름"+ingredientList.get(0).getIngreName());
		
	%>
	
	<!-- 칵테일 이미지, 정보 -->	
	<div class="Menugroup">

		<div class="cockimg">
			<img src="<%=recipeInfo.getImgPath()%>" class="img">
		</div>

		<div class="contents">

			<div class="namebox">
				<h4 class="name"><%=recipeInfo.getRecipeName()%></h4>
			</div>

			<div class="textbox">
				<h4 class="text"><%=recipeInfo.getCockInfo()%></h4>
			</div>


			<div class="Alcbox">
				<div class="alc">
					<h4 class="alctext">도수 : <%=recipeInfo.getCockAlc()%>%</h4>
				</div>

			</div>

			<div class="likebox">
				<h4 class="like">
					<table>
						<tr>
							<td class="likeIcon"><img src="./img/like-check.png" width="20px" height="20px" id="sibalLike"></td>
							<td><p><%=recipeInfo.getLIKE_COUNT()%></p></td>
						</tr>
						<tr>
							<td class="bookIcon"><img src="./img/bookmark-check.png" width="20px" height="20px" id="sibalBookmark"></td>
							<td><p><%=recipeInfo.getBOOKMARK_COUNT()%></p></td>
						</tr>
					</table>
				</h4>
			</div>
			<%if (login != null) {%>
			<!-- 좋아요 및 북마크 -->
				<script type="text/javascript">
					/* 좋아요 늘리기 */		
					$('#sibalLike').on('click', function(){
						var recipeNum = "<%=recipeInfo.getRecipeNum()%>";
						var nickName = "<%=login.getNickName() %>";
						console.log(recipeNum);
						$.ajax({
							url : "RecipeLikeService", /* 어디로 보낼지 */
							data : {"recipeNum" : recipeNum,
									"nickName" : nickName	
							}, /* 어떤 데이터를 보낼지 */
							datatype : "text", /* 어떤 데이터 타입으로 받아올지 */
							success : (data)=>{
								if(data != null){
									$('#sibalLike2').html(data)
								}
							}, /* 성공 시 */
							error : ()=>{
								alert('추천 실패');
							}, /* 실패 시 */
						})
					});	
				</script>
				<%}%>
			
			
		</div>

	</div>

	<div class="Group">

		<!-- 재료, 레시피 정보 -->
		<div class="info">
			<h2 class="infotitle">재료 정보</h2>
			<div class="meterial">

				<div class="display">
					<!-- 재료 설명 넣기 -->

					<div class="metname">
						<h3 class="metinfo1">
							<%for(int i = 0; i<ingredientList.size();i++){ %>
							<%= ingredientList.get(i).getIngreName() %><br>
							<%} %>
						</h3>
					</div>
					<div class="amount">
						<h3 class="metinfo2">
							<%for(int i = 0; i<ingredientList.size();i++){ %>
							<%= ingredientList.get(i).getVolume() %><br>
							<%} %>
						</h3>
					</div>
				</div>
			</div>



			<h2 class="infotitle">레시피 설명</h2>
			<div class="method">
				<h3 class="methinfo">
					<%= recipeInfo.getCockRec() %>
				</h3>

			</div>

		</div>


		<!-- 비슷한 칵테일 -->
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<h3 class="yousaCock">유사한 칵테일</h3>
		<div class="similar">

			<div class="next">
				<img class="nextimg" src="./img/next1.png">
			</div>

			<%for(int i=1; i<=4; i++) { %>
			<div class="recipe">
				<a href="MenuPage.jsp">
					<div class="recipediv">
						<img class="recipeImg" src="./img/블루하와이안.PNG">
					</div>


					<div class="recipetitle">
						<div class="recipename1">블루 하와이안</div>

						<div class="recipename2">
							<img src="./img/like-check.png" color="#228b22" width="15px" height="15px">30							
							<img src="./img/bookmark-check.png" width="15px" height="15px">50
							<img src="./img/comment.png" width="17px" height="17px">30
						</div>
					</div>
				</a>
			</div>
			<% } %>

			<div class="next">
				<img class="nextimg" src="./img/next2.png">
			</div>

		</div>




	</div>

	<br>
	<br>
	<br>
</body>
	<%@ include file="footer.jsp"%>
</html>