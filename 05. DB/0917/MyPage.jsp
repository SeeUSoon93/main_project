<%@page import="com.smhrd.model.AllVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.CockDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 마이페이지</title>
<link rel="stylesheet" href="./css/MyPage.css">
</head>
<body>
	<%@ include file="MainHeader.jsp"%>
    <%
    int challengeRecipe = new MemberDAO().challengeRecipe(login.getNickName()); 
    int bookMark = new MemberDAO().bookMark(login.getNickName());
    List<AllVO> inquiry = new MemberDAO().memberInquiry(login.getNickName());
    List<AllVO> memberBookmark = new MemberDAO().memberBookmark(login.getNickName());
    %>

	<!-- 프로필 -->
	<div class="profile">

		<div class="picture">
			<img src="./img/user.png" class="img">
		</div>

		<div class="contents">

			<div class="namebox">
				<h4 class="name"><%=login.getNickName()%></h4>
			</div>

			<div class="textbox">
				<h4 class="text">나의 도전 레시피 <%=challengeRecipe%>개</h4>
			</div>


			<div class="textbox">
				<h4 class="text">북마크 <%=bookMark%>개</h4>
			</div>

			<div class="textbox">

				<div class="alc">

					<h4 class="text">
						<a href="MyPageSub.jsp"> 나의 좋아요 / 댓글 </a>
					</h4>

				</div>
			</div>
		</div>

	</div>






	<!-- 내가 올린레시피 -->


	<div class="Group">



		<div class="upload">
			<div class="box1">
				<h2 class="uploadtitle">
					<img src="./img/도전 레시피.png" height="25px"> 나의 도전 레시피
				</h2>

				<%
				for (int i=0;i<inquiry.size();i++) {
				%>

				<div class="cocktailsBox1">


					<div class="recipe">

						<div class="recipediv">

							<a href="MenuPage.jsp?recipeNum=<%=inquiry.get(i).getRecipeNum()%>"><img class="recipeImg" src="<%=inquiry.get(i).getImgPath()%>">

						</div>


						<div class="recipetitle">

							<div class="recipename1"><%=inquiry.get(i).getRecipeName() %></div></a>

						</div>

					</div>
					<%
					}
					%>

				</div>



			</div>
			<!-- box1 -->




		</div>

	</div>


	<!--  북마크 -->




	<div class="upload">

		<h2 class="uploadtitle">
			<img src="./img/bookmark-check.png" height="25px"> 북마크
		</h2>

		<div class="box2">

			<%
			for (int i=0;i<memberBookmark.size(); i++) {
			%>

			<div class="cocktailsBox2">


				<div class="recipe">

					<div class="recipediv">

						<a href="MenuPage.jsp?recipeNum=<%=memberBookmark.get(i).getRecipeNum()%>"><img class="recipeImg" src="<%=memberBookmark.get(i).getImgPath()%>">

					</div>


					<div class="recipetitle">

						<div class="recipename1"><%=memberBookmark.get(i).getRecipeName()%></div></a>

					</div>

				</div>
				<%
				}
				%>

			</div>



		</div>


	</div>










		<br>
	<br>
	<br>

</body>
<%@ include file="footer.jsp"%>
</html>