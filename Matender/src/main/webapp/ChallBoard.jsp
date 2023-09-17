
<%@page import="com.smhrd.model.IngredientDAO"%>
<%@page import="com.smhrd.model.IngredientVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 도전레시피등록</title>

<link rel="stylesheet" href="./css/ChellBoard.css">
<script>
        const add_textbox = () => {
            const box = document.getElementById("box");
            const newP = document.createElement('p');
            newP.innerHTML = "<input type='text' name='text3'> <input type='button' value='삭제' onclick='remove(this)'>";
            box.appendChild(newP);
        }
        const remove = (obj) => {
            document.getElementById('box').removeChild(obj.parentNode);
        }
    </script>
</head>
<body>


	<%@ include file="MainHeader.jsp"%>

	<!-- 로그인 안하면 이용 못하는 기능 -->
	<%
	login = (MemberVO) session.getAttribute("loginInfo");
	if (login == null) {
	%>
	<script type="text/javascript">
		alert('로그인 해주세요!');		
		window.location.href="login.jsp"
		</script>
	<%
	}
	%>

	<!-- 도전레시피 소개 -->
	<div class="profile">

		<div class="picture">
			<img src="./img/user.png" class="img">
		</div>

		<div class="contents">

			<div class="namebox">
				<h4 class="name">도전! 마텐더</h4>
			</div>

			<div class="textbox">
				<h4 class="text1">마텐더 가이드에 도전하세요!</h4>
			</div>


			<div class="textbox">
				<h4 class="text2">
					좋아요를 많이 받게되면<br> 마텐더 인기순위에 등록됩니다.<br> 매력적인 칵테일을 소개해주세요!
				</h4>
			</div>

		</div>

	</div>



	<!-- 작성글 -->
	<form>

		<div class="box1">

			<div class="tailname">

				<!-- 이름 -->
				<p class="challtitle">칵테일 이름</p>
				<input placeholder="이름을 지어주세요." type="text" name="recipeName">

				<br>
			</div>

			<div class="explain">

				<!-- 칵테일 간단한 설명 -->
				<p class="challtitle">칵테일 설명</p>
				<textarea placeholder="칵테일 소개를 적어주세요" name="cockInfo"></textarea>
			</div>

			<div class="imgredient">

				<!-- 재료 -->
				<p class="challtitle">칵테일 재료</p>
				<div id="box">
					<input type="text" name="text3">
					<%-- 재료 목록 불러오기 --%>
					<%-- 		<% 
		List<IngredientVO> ingreAll = new IngredientDAO().ingreAll();
		System.out.print("칵테일 리스트 사이즈 :"+ingreAll.size());
		
		for(int i = 0; i< ingreAll.size();i++){
		%>
		<input type="checkbox" name="ingreName" value="<%=ingreAll.get(i).getIngreName() %>"onclick="getCheckboxValue()"/><%=ingreAll.get(i).getIngreName() %>&nbsp;&nbsp;	
		<%} %> --%>

				</div>
			</div>

			<div class="report">

				<!-- 레시피 정보 -->
				<p class="challtitle">레시피 정보</p>
				<textarea placeholder="내용을 입력하세요" name="text2"></textarea>
			</div>

			<div class="challfile">
				<!-- 칵테일 사진 -->
				<p class="challtitle">칵테일 사진</p>
				<input type="file" name="filename">
			</div>

			<div class="challsubmit">

				<input type="submit" value=" 제출">

			</div>
		</div>


	</form>




</body>
<%@ include file="footer.jsp"%>
</html>
