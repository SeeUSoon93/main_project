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


	<!-- 프로필 -->
	<div class="profile">
			
			<div class="picture">
				<img src="./img/user.png" class="img">
			</div>
		
		<div class="contents">
				
				<div class="namebox">
					<h4 class="name">
					화정동 다람쥐
					</h4>
				</div>
				
				<div class="textbox">
					<h4 class="text">
					 나의 도전 레시피  5개
					</h4>
				</div>
				
				
				<div class="textbox">
					<h4 class="text">
					 북마크  5개
					</h4>
				</div>
				
				<div class="textbox">
				
					<div class="alc">

						<h4 class="text">
						<a href="MyPageSub.jsp">
						나의 좋아요 / 댓글
						</a>
						</h4>
						
					</div>
				</div>
		</div>
		
	</div>
	
	




<!-- 내가 올린레시피, 북마크 -->


 	<div class="Group"> 
	
		
				
 		<div class="upload">
		<div class="box1">
				<h2 class="uploadtitle">
				<img src="./img/도전 레시피.png" width="40px" height="45px">
				나의 도전 레시피
				</h2>
				
					
					
						<%for(int i=1; i<=5; i++) { %>
			            
			               <div class="cocktailsBox1">
			
			
			                  <div class="recipe">
			
			                     <div class="recipediv">
			                        
			                        <img class="recipeImg" src="./img/깔루아밀크.PNG">
			                     
			                     </div>
			
			
			                     <div class="recipetitle">
			                        
			                        <div class="recipename1">깔루아밀크</div>
		    
			                     </div>
			
			                  </div>
			                  <% } %>
			
			               </div>
			            
				
		
					</div> <!-- box1 -->
		

				
							
			</div>

 </div>


<!-- 내가 올린레시피, 북마크 -->



	
		<div class="upload">
		
			<h2 class="uploadtitle">
			<img src="./img/bookmark-check.png" width="35px" height="30px">
			북마크
			</h2>
				
				<div class="box2">
	
					<%for(int i=1; i<=8; i++) { %>
		            
		               <div class="cocktailsBox2">
		
		
		                  <div class="recipe">
		
		                     <div class="recipediv">
		                        
		                        <img class="recipeImg" src="./img/깔루아밀크.PNG">
		                     
		                     </div>
		
		
		                     <div class="recipetitle">
		                        
		                        <div class="recipename1">깔루아밀크</div>
	    
		                     </div>
		
		                  </div>
		                  <% } %>
		
		               </div>
		            
				
		
				</div>
				
							
			</div>









	
	<%-- <%@ include file="footer.jsp"%> --%>
</body>	
</html>