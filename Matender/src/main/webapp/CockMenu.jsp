<%@page import="com.smhrd.model.AllVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.LikeVO"%>
<%@page import="com.smhrd.model.LikeDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.CockDAO"%>
<%@page import="com.smhrd.model.CockVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더-전체레피시</title>
<link rel="stylesheet" href="./css/CockMenu.css">
</head>
<body>
	<%@ include file="MainHeader.jsp"%>
	
    <%  List<AllVO> inquiry = new CockDAO().joinInquiry();
        System.out.print("칵테일 리스트 사이즈 :"+inquiry.size());%>

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
					<img src="./img/logo1.png" width="100px">
				</div>

				<div class="groupBox2">
					<img src="./img/logo2.png" width="100px">
				</div>

				<div class="groupBox3">
					<img src="./img/logo3.png" width="100px">
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

		<br>
		<br>
		<div class="CateAndRecipe">
			<div class="categoryBox1">
				<div class="categoryBox2">
					<div class="title">🍹 칵테일 찾기 🍹</div>

					<div class="baseAlcohol">베이스 ▼</div>
					<div class="menubox1">
						<input type="checkbox" name="base" value="보드카"onclick="getCheckboxValue()"/>보드카<br>
						<input type="checkbox" name="base" value="진" onclick="getCheckboxValue()"/>진<br>
						<input type="checkbox" name="base" value="위스키" onclick="getCheckboxValue()"/>위스키<br>
						<input type="checkbox" name="base" value="럼" onclick="getCheckboxValue()"/>럼<br>
						<input type="checkbox" name="base" value="리큐르" onclick="getCheckboxValue()"/>리큐르<br>
						<input type="checkbox" name="base" value="데킬라" onclick="getCheckboxValue()"/>데킬라<br>
						<input type="checkbox" name="base" value="와인" onclick="getCheckboxValue()"/>와인<br>
						<input type="checkbox" name="base" value="브랜디" onclick="getCheckboxValue()"/>브랜디<br>
						<input type="checkbox" name="base" value="소주" onclick="getCheckboxValue()"/>소주<br>
						<input type="checkbox" name="base" value="맥주" onclick="getCheckboxValue()"/>맥주<br>
						<input type="checkbox" name="base" value="논알콜" onclick="getCheckboxValue()"/>논알콜<br>
					</div>

<!-- 					<div class="ingredient">재 료 ▼</div>
					<div class="menubox2">
						<input type="checkbox" name="ingredient" value="시럽" onclick="getCheckboxValue()"> 시럽<br> <input
							type="checkbox" name="ingredient" value="주스" onclick="getCheckboxValue()"> 주스<br> <input
							type="checkbox" name="ingredient" value="탄산수" onclick="getCheckboxValue()"> 탄산수<br> <input
							type="checkbox" name="ingredient" value="토닉워터" onclick="getCheckboxValue()"> 토닉워터<br> <input
							type="checkbox" name="ingredient" value="에너지드링크" onclick="getCheckboxValue()"> 에너지드링크
					</div> -->

					<div class="dangdo">
						도 수 ▼<br>
					</div>
					<div class="menubox3">
						<input type="checkbox" name="dosu" value="10" onclick="getCheckboxValue()"> 0%~10%<br>
						<input type="checkbox" name="dosu" value="20" onclick="getCheckboxValue()"> 11%~20%<br>
						<input type="checkbox" name="dosu" value="30" onclick="getCheckboxValue()"> 21%~30%<br>
						<input type="checkbox" name="dosu" value="40" onclick="getCheckboxValue()"> 31%~40%<br>
						<input type="checkbox" name="dosu" value="50" onclick="getCheckboxValue()"> 40%이상<br>
					</div>

				</div>
				
				<div id="cocktailsibal">
				<%for(int i=0; i<inquiry.size(); i++) { %>
					<div class="cocktailsBox">
						<div class="recipe">
							<div class="recipediv">
								<a href="MenuPage.jsp?recipeNum=<%=inquiry.get(i).getRecipeNum()%>"><img class="recipeImg" src="<%=inquiry.get(i).getImgPath() %>">
							</div>
							<div class="recipetitle">
								<div class="recipename1"><%=inquiry.get(i).getRecipeName() %></div></a>
								<div class="recipename2">
								<img src="./img/like-check.png" color= "#228b22" width="15px" height="15px"> <%=inquiry.get(i).getLIKE_COUNT() %>
									<img src="./img/bookmark-check.png" width="15px" height="15px"> <%=inquiry.get(i).getBOOKMARK_COUNT() %> 
									<img src="./img/comment.png" width="17px" height="17px"> <%=inquiry.get(i).getREPLE_COUNT() %>
								</div>
							</div>
						</div>
						<%
						} %>
					</div>
				</div>
				
				<script type="text/javascript">
				// 초기에 선택된 체크박스 값을 저장할 변수들
				
					function getCheckboxValue()  {
					var baseValues = [];
					var dosuValues = [];
					  // 선택된 목록 가져오기
					  const baseQuery = 'input[name="base"]:checked';
					  const dosuQuery = 'input[name="dosu"]:checked';
					  					  
					  const selectedBase = document.querySelectorAll(baseQuery);
					  const selectedDosu = document.querySelectorAll(dosuQuery);
					  
					  // 선택된 목록에서 base 찾기					  
					  selectedBase.forEach((base) => {
						  baseValues.push(base.value);
					  });		
					  // 선택된 목록에서 도수 찾기					  
					  selectedDosu.forEach((dosu) => {
						  dosuValues.push(dosu.value);
					  });					  
					  // 출력
					  console.log(baseValues);					 
					  console.log(dosuValues);
					  
					  // JSON데이터 생성
					  var jsonData = {
					      "base": baseValues,					      
					      "dosu": dosuValues
					     };
					  console.log(jsonData);
					  if(jsonData != null){
					  // ajax로 데이터 전송
					   $.ajax({
						      type: "POST",
						      url: "filterService",
						      data: JSON.stringify(jsonData), // JSON 문자열로 전송됩니다.
						      contentType: "application/json; charset=utf-8",
						      dataType: "json",
						      success: function(result) {
						         console.log(result);						         
						         let resultHTML = "";
						         for (let i = 0; i < result.length; i++) {
						            resultHTML += "<div class='cocktailsBox'>";
						            resultHTML += "<div class='recipe'>";
						            resultHTML += "<div class='recipediv'>";
						            resultHTML += "<a href=MenuPage.jsp?recipeNum="+result[i].recipeNum+"><img class='recipeImg'src='"+ result[i].imgPath +"'>";
						            resultHTML += "</div>";
						            resultHTML += "<div class='recipetitle''>";
						            resultHTML += "<div class='recipename1'>" + result[i].recipeName + "</div></a>";
						            resultHTML += "<div class='recipename2'>";
						            resultHTML += "<img src='./img/like-check.png' color= '#228b22' width='15px' height='15px'>"+result[i].LIKE_COUNT
						            resultHTML += "&nbsp&nbsp<img src='./img/bookmark-check.png' width='15px' height='15px'>"+result[i].BOOKMARK_COUNT
						            resultHTML += "&nbsp&nbsp<img src='./img/comment.png' width='17px' height='17px'>"+result[i].REPLE_COUNT
						            resultHTML += "</div>";
						            resultHTML += "</div>";
						            resultHTML += "</div>";
						         }
						         resultHTML += "</div>";
						         $("#cocktailsibal").html(resultHTML);
						      },
						      error: function() {
						         console.error("오류 발생: ");
						      }
						   });
					}					 
				}
				</script>
			</div>
		</div>
	</div>
	<script src="./js/CockMenu.js"></script>
		<br>
	<br>
	<br>
	<div>
	</div>
</body>
	<%@ include file="footer.jsp"%>
</html>