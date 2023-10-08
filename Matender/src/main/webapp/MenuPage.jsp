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
	
	if(recipeInfo == null){
		%>
		<script type="text/javascript">
			alert('없는 메뉴입니다!');		
			window.location.href="CockMenu.jsp?menu=main"
			</script>
		<%		
	}else{

	System.out.println("조회한 레시피 이름 : " + recipeInfo.getRecipeName());
	System.out.println("조회한 레시피 번호 : " + recipeInfo.getRecipeNum());
	System.out.println("조회한 레시피 도수 : " + recipeInfo.getCockAlc() + "도");
	
	


	/* 레시피 재료 불러오기 */

	List<IngredientVO> ingredientList = new IngredientDAO().ingredientList(recipeNum);
	System.out.println("재료 리스트 크기" + ingredientList.size());
	%>

	<!-- 칵테일 이미지, 정보 -->
	<div class="Menugroup">

		<div class="cockimg">
			<%
			if (recipeInfo.getRecipeCode().equals("CH001")) {
			%>
			<img src="<%=recipeInfo.getImgPath()%>" class="detailImg">
			<%
			} else {
			%>
			<img src="./boardFile/<%=recipeInfo.getImgPath()%>" class="detailImg">
			<%
			}
			%>
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
					<h4 class="alctext">
						도수 :
						<%=recipeInfo.getCockAlc()%>%
					</h4>
				</div>

			</div>

			<div class="likebox">
				<h4 class="like">
					<table>
						<tr>
							<td class="likeIcon"><img src="./img/like-check.png"
								width="20px" height="20px" id="sibalLike"></td>
							<td><p id="sibalLike2"><%=recipeInfo.getLIKE_COUNT()%></p></td>
						</tr>
						<tr>
							<td class="bookIcon"><img src="./img/bookmark-check.png"
								width="20px" height="20px" id="sibalBookmark"></td>
							<td><p id="sibalBookmark2"><%=recipeInfo.getBOOKMARK_COUNT()%></p></td>
						</tr>
					</table>
				</h4>
			</div>
			<%
			if (login != null) {
			%>
			<!-- 좋아요 및 북마크 -->
			<script type="text/javascript">
					/* 좋아요 늘리기 */		
					$('#sibalLike').on('click', function(){
						var recipeNum = "<%=recipeInfo.getRecipeNum()%>";
						var nickName = "<%=login.getNickName()%>";
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
					
					/* 북마크 */
					$('#sibalBookmark').on('click', function(){
						var recipeNum = "<%=recipeInfo.getRecipeNum()%>";
						var nickName = "<%=login.getNickName()%>";
						console.log(recipeNum);
						$.ajax({
							url : "RecipeBMService", /* 어디로 보낼지 */
							data : {"recipeNum" : recipeNum,
									"nickName" : nickName	
							}, /* 어떤 데이터를 보낼지 */
							datatype : "text", /* 어떤 데이터 타입으로 받아올지 */
							success : (data)=>{
								if(data != null){
									$('#sibalBookmark2').html(data)
								}
							}, /* 성공 시 */
							error : ()=>{
								alert('북마크 실패');
							}, /* 실패 시 */
						})
					});	
					
					
					
					
					
					
				</script>
			<%
			}
			%>


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
							<%if(ingredientList!=null){
                     for (int i = 0; i < ingredientList.size(); i++) {
                     %>
							<%=ingredientList.get(i).getIngreName()%><br>
							<%}
                     }else{%>
							재료를 등록해주세요
							<%}%>
						</h3>
					</div>
					<div class="amount">
						<h3 class="metinfo2">
							<%if(ingredientList!=null){
                     for (int i = 0; i < ingredientList.size(); i++) {
                     %>
							<%=ingredientList.get(i).getVolume()%><br>
							<%}
                     }else{%>
							!!
							<%}%>
						</h3>
					</div>
				</div>
			</div>



			<h2 class="infotitle">레시피 설명</h2>
			<div class="method">
				<h3 class="methinfo">
					<%
					// 문자열을 숫자와 내용으로 분리하여 배열로 저장
					String[] parts = recipeInfo.getCockRec().split("\\d+\\.");
					for (int i = 1; i < parts.length; i++) {

						String part = parts[i].trim(); // 문자열 앞뒤의 공백 제거
					%>
					<%=i + ". " + part%><br>
					<%
					}
					%>
				</h3>

			</div>

		</div>


		<!-- 비슷한 칵테일 -->
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>

		<!-- jQuery 로드 -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

		<!-- 슬라이더 -->
		<script type="text/javascript"
			src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


		<script>
        $(document).ready(function () {

            $('.godSoonSival').slick({
                centerMode: true,
                centerPadding: '60px',
                slidesToShow: 3,
                responsive: [
                    {
                        breakpoint: 768,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 1
                        }
                    }
                ]
            });

            
         // 이전 화살표 클릭 시 슬라이드 이동
            $('.prevArrow').on('click', function() {
                $('.godSoonSival').slick('slickPrev');
            });

            // 다음 화살표 클릭 시 슬라이드 이동
            $('.nextArrow').on('click', function() {
                $('.godSoonSival').slick('slickNext');
            });
            
        });
    </script>


		<div class="similar">
			<h3 class="yousaCock">유사한 칵테일</h3>

			<div class="yousaCocktailsBox">

				<div class="prevArrow">
					<img class="next1" src="./img/next1.png">
				</div>
				<div class="godSoonSival-container">

					<div class="godSoonSival">
						<%
						List<AllVO> similRecipe = new CockDAO().similRecipe(recipeInfo.getCockBase());
						System.out.print("유사레시피 리스트 사이즈 :" + similRecipe.size());

						for (int i = 0; i < similRecipe.size(); i++) {
						%>
						<div class="recipe">
							<a
								href="MenuPage.jsp?recipeNum=<%=similRecipe.get(i).getRecipeNum()%>">
								<div class="recipediv">
									<%
									if (similRecipe.get(i).getRecipeCode().equals("CH001")) {
									%>
									<img src="<%=similRecipe.get(i).getImgPath()%>" class="recipeImg">
									<%
									} else {
									%>
									<img src="./boardFile/<%=similRecipe.get(i).getImgPath()%>"
										class="recipeImg">
									<%
									}
									%>
								</div>


								<div class="recipetitle">
									<div class="recipename1"><%=similRecipe.get(i).getRecipeName()%></div>

									<div class="recipename2">
										<div class="like">
											<img src="./img/like-check.png" color="#228b22" width="15px"
												height="15px">

											<%=similRecipe.get(i).getLIKE_COUNT()%>
										</div>
										<div class="bookmark">
											<img src="./img/bookmark-check.png" width="15px"
												height="15px">
											<%=similRecipe.get(i).getBOOKMARK_COUNT()%>
										</div>
									</div>
								</div>
							</a>
						</div>
						<%
						}
						}
						%>
					</div>

				</div>
				<div class="nextArrow">
					<img class="next1" src="./img/next2.png">
				</div>
			</div>

		</div>


	</div>

	<br>
	<br>
	<br>
</body>
</html>