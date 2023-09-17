<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="fontstyle.css" />
    <link rel="stylesheet" href="main.css" />
    <%@ include file="MainHeader.jsp"%>
<title>Insert title here</title>
<style>
	#kakao-login-btn {
        height: 300px;
		display: flex;
        align-items: center;
        justify-content: center;
  		margin-left: auto;
 		margin-right: auto;
        z-index: 10;
	}
</style>
</head>
<body>
	<!-- ajax -->
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
		integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh"
		crossorigin="anonymous">
		
	</script>

	<ul>
		<p id="token-result"></p>
		<ol id="kakao-login-btn" onclick="kakaoLogin();"><a 
			href="javascript:void(0)"> <img
				src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
				width="230" alt="카카오 로그인 버튼"></a></ol>
	</ul>

	<!-- 카카오 스크립트 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		Kakao.init('9af0b209440991a98a4221fd3e573d44'); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
	

		//카카오로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				scope : 'profile_nickname, account_email, gender, age_range',
				success : function(response) {
					
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {							
							console.log(response)		
							
							 // Ajax를 이용해 post방식으로 값 넘기기
                           
							 $.ajax({
                                type : 'POST',
                                url : 'EmailCheck',
                                data : {email : response.kakao_account.email},
                                datatype : "text",
                                success : (data)=>{
                                	if(data == 'false'){
                                		$.ajax({
                                    		// 로그인 시키기
                                    		type : 'POST',
                                    		url : 'LoginService',
                                            data : {
                                                nickName : response.properties.nickname,
                                            },                           		
                                            success : function(result) {
                                                console.log(result);
                                                location.replace("MainPage.jsp");
                                            },
                                            error : function(error) {
                                            	location.replace("MainPage.jsp");
                                            }                          		
                                    	})
                                	}else{
                                		$.ajax({
                                		// 중복이 아니니까 회원가입 시키기
                                		type : 'POST',
                                		url : 'JoinService',
                                        data : {
                                            nickName : response.properties.nickname,
                                            email : response.kakao_account.email,
                                            gender : response.kakao_account.gender,
                                            age : response.kakao_account.age_range
                                        },                           		
                                        success : function(result) {
                                            console.log(result);
                                            location.href="MainPage.jsp";
                                        },
                                        error : function(error) {
                                            console.log(error);
                                            location.href="MainPage.jsp";
                                        }                          		
                                	})
                                	}
                                }
                            });
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}
		
/* 		//카카오로그아웃  
		function kakaoLogout() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		} */
	</script>
</body>
</html>