<%@page import="com.smhrd.model.CockDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.AllVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마텐더 - 인기순위</title>
<link rel="stylesheet" href="./css/CockRank.css"/>
</head>
<body>
	<%@ include file="MainHeader.jsp"%>

<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- 슬라이더 -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

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

	<!-- 어떤 레시피인지 불러오기 -->
	<%
	request.setCharacterEncoding("UTF-8");
	String menu = request.getParameter("menu");
	List<AllVO> matenderRank = new CockDAO().joinRank();
	List<AllVO> challengeRank = new CockDAO().joinRank2();

	System.out.print("일반 리스트 사이즈 :" + matenderRank.size());
	System.out.print("챌린지 리스트 사이즈 :" + challengeRank.size());
	%>

	<div class="RankGroup">

		<h3>전체레시피 순위</h3>

		<div class="cocktailsBox">
	<div class="godSoonSival-container">
	
			<div class="prevArrow"><img class="next1" src="./img/next1.png"></div>
			
			<div class="godSoonSival">
				<%for (int i = 0; i < matenderRank.size(); i++) {%>
				<div class="recipe">
					<a
						href="MenuPage.jsp?recipeNum=<%=matenderRank.get(i).getRecipeNum()%>">
						<p style="font-family:'GmarketSansMedium'; font-size='16px';" ><%=i + 1%>위
						</p>
						<div class="recipediv">
							<img class="recipeImg"
								src="<%=matenderRank.get(i).getImgPath()%>">
						</div>
						
						<div class="recipetitle">
							<div class="recipename1"><%=matenderRank.get(i).getRecipeName()%></div>

							<div class="recipename2">
								<img src="./img/like-check.png" color="#228b22" width="15px"
									height="15px">
								<%=matenderRank.get(i).getLIKE_COUNT()%>
								<img src="./img/bookmark-check.png" width="15px" height="15px">
								<%=matenderRank.get(i).getBOOKMARK_COUNT()%>
							</div>
						</div>
					</a>
				</div>
				<%}	%>
			</div>
				<div class="nextArrow"><img class="next2" src="./img/next2.png"></div>
		</div>
	</div>


	</div>

	<br>
	<br>
	<br>

	<div class="RankGroup">

		<h3>도전!레시피 순위</h3>

		<div class="cocktailsBox">

			<div class="godSoonSival">
				<%
				for (int i = 0; i < challengeRank.size(); i++) {
				%>
				<div class="recipe"><a
						href="MenuPage.jsp?recipeNum=<%=matenderRank.get(i).getRecipeNum()%>">
						<p style="font-family:'GmarketSansMedium'; font-size='16px';"><%=i + 1%>위
						</p>
					<div class="recipediv">
						<img class="recipeImg"
							src="<%=challengeRank.get(i).getImgPath()%>">
					</div>


					<div class="recipetitle">
						<div class="recipename1"><%=challengeRank.get(i).getRecipeName()%></div>

						<div class="recipename2">
							<img src="./img/like-check.png" color="#228b22" width="15px"
								height="15px">
							<%=challengeRank.get(i).getLIKE_COUNT()%>
							<img src="./img/bookmark-check.png" width="15px" height="15px">
							<%=challengeRank.get(i).getBOOKMARK_COUNT()%>
						</div>
					</div>
					</a>
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
</html>



