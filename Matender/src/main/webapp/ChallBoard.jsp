
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
	String nick = "";
	if (login == null) {
	%>
	<script type="text/javascript">
		alert('로그인 해주세요!');		
		window.location.href="login.jsp"
		nick = null;
		</script>
	<%
	} else {
	nick = login.getNickName();
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
	<form action="ChallBoardInsertService" method="post"
		enctype="multipart/form-data">
		<%
		if (nick != null) {
		%>
		<input type="hidden" value="<%=nick%>" name="nickName" readonly>
		<%
		}
		%>

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

			<div class="sibaslbase">

				<!-- 칵테일 베이스 선ㅌ개 -->
				<p class="challtitle2">칵테일 베이스 선택해주세요</p>
				<input type="checkbox" name="cockBase" value="보드카"
					onclick="getCheckboxValue()" />보드카&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="진"
					onclick="getCheckboxValue()" />진&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="위스키"
					onclick="getCheckboxValue()" />위스키&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="와인"
					onclick="getCheckboxValue()" />와인&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="맥주"
					onclick="getCheckboxValue()" />맥주&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="소주"
					onclick="getCheckboxValue()" />소주&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="리큐르"
					onclick="getCheckboxValue()" />리큐르&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="럼"
					onclick="getCheckboxValue()" />럼&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="데킬라"
					onclick="getCheckboxValue()" />데킬라&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="브랜디"
					onclick="getCheckboxValue()" />브랜디&nbsp;&nbsp; <input
					type="checkbox" name="cockBase" value="논알콜"
					onclick="getCheckboxValue()" />논 알콜
			</div>

			<div class="cockAlc">

				<!-- 재료 -->
				<p class="challtitle2">칵테일 도수</p>
				<div id="box">
					<input type="text" name="cockAlc" placeholder="ex) 16">
				</div>
			</div>




			<div class="imgredient">

				<!-- 재료 -->
				<p class="challtitle">재료 / 용량</p>
				<div id="ingredient-container">


					<!-- input 태그 그룹 -->
					<div class="ingredient-group">
						<input type="text" name="ingreName" placeholder="ex) 보드카"
							onfocus="clearValue(this)"> <input type="text"
							name="volume" class="volume" placeholder="ex) 30ml"
							onfocus="clearValue(this)">
					</div>


				</div>
				<button type="button" onclick="addIngredientGroup()">추 가</button>
				<button type="button" onclick="removeIngredientGroup()">삭 제</button>
				<%-- 재료 목록 불러오기 --%>
				<%-- 		<% 
		List<IngredientVO> ingreAll = new IngredientDAO().ingreAll();
		System.out.print("칵테일 리스트 사이즈 :"+ingreAll.size());
		
		for(int i = 0; i< ingreAll.size();i++){
		%>
		<input type="checkbox" name="ingreName" value="<%=ingreAll.get(i).getIngreName() %>"onclick="getCheckboxValue()"/><%=ingreAll.get(i).getIngreName() %>&nbsp;&nbsp;	
		<%} %> --%>

			</div>

			<div class="report">

				<!-- 레시피 정보 -->
				<p class="challtitle">레시피 순서</p>
				<textarea
					placeholder="번호를 매겨 내용을 입력하세요
ex)
1. 소주를 붓는다
2. 맥주를 붓는다"
					name="cockRec"></textarea>
			</div>

			<div class="challfile">
				<!-- 칵테일 사진 -->
				<p class="challtitle">칵테일 사진</p>
				<input type="file" name="filename">
			</div>

			<div class="challsubmit">

				<input id="submitbutton" type="submit" value="제 출">

			</div>
		</div>


	</form>

	<script>
	// 재료 그룹 추가 버튼을 클릭할 때 호출되는 함수
	function addIngredientGroup() {
	    const ingredientContainer = document.getElementById("ingredient-container");
	    const newIngredientGroup = document.createElement("div");
	    newIngredientGroup.className = "ingredient-group";

	    // 첫 번째 input 태그
	    const newIngredientInput1 = document.createElement("input");
	    newIngredientInput1.type = "text";
	    newIngredientInput1.name = "ingreName";

	    // 두 번째 input 태그
	    const newIngredientInput2 = document.createElement("input");
	    newIngredientInput2.type = "text";
	    newIngredientInput2.name = "volume";

	    // div에 input 태그 추가
	    newIngredientGroup.appendChild(newIngredientInput1);
	    newIngredientGroup.appendChild(newIngredientInput2);

	    // container에 새로운 그룹 추가
	    ingredientContainer.appendChild(newIngredientGroup);
	}

	// 재료 그룹 삭제 버튼을 클릭할 때 호출되는 함수
	function removeIngredientGroup() {
	    const ingredientContainer = document.getElementById("ingredient-container");
	    const ingredientGroups = ingredientContainer.getElementsByClassName("ingredient-group");
	    
	    if (ingredientGroups.length > 0) {
	        // 가장 마지막으로 추가된 재료 그룹 삭제
	        ingredientContainer.removeChild(ingredientGroups[ingredientGroups.length - 1]);
	    }
	}

</script>


</body>
</html>
