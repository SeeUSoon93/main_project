<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<a class="btn btnkakao" id="kakao-login-btn"
		style="text-align: center;" href="javascript:kakaoLogin()">카카오 1초
		로그인/회원가입</a>

	<script>
// 카카오 초기화
Kakao.init('9af0b209440991a98a4221fd3e573d44');
function kakaoLogin() {
	
    Kakao.Auth.login({
        success: function(response) {
            Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (response) => {
                	var kakaoid = response.id+"K";
                    $.ajax({
    					type : "post",
    					url : 'Idcheck', // ID중복체크를 통해 회원가입 유무를 결정한다.
    					data : {"userid":memID},
    					dataType:"json",
    					success : function(json){   				
    						if(json.idExists){
    							// 존재하는 경우 로그인 처리
    							createHiddenLoginForm(memID);
    							
    						} else{
    							// 회원가입
    							$.ajax({
    								type : "post",
    		    					url : 'Join.jsp',
    		    					data : {"userid":kakaoid,
    		    						    "email":response.kakao_account.email},
    		    					dataType :"json",
    		    					success : function(json){
    		    						if(json.success){
    		    							// 로그인
    		    							createHiddenLoginForm(kakaoid);		    							
    		    						} else {
    		    							alert('카카오 회원가입 실패. 일반계정으로 로그인하시기 바랍니다.');
    		    						}
    		    					},
    		    					error: function(request, status, error){
    		    		                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
    		    		                }
    							});
    						}						
    					},
    					error: function(request, status, error){
    		                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
    		                }
    				});
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            alert(error);
        }
    });
}

function createHiddenLoginForm(kakaoId){
	
	var frm = document.createElement('form');
	frm.setAttribute('method', 'post');
	frm.setAttribute('action', '/member/kakaoLogin.go');
	var hiddenInput = document.createElement('input');
	hiddenInput.setAttribute('type','hidden');
	hiddenInput.setAttribute('name','userid');
	hiddenInput.setAttribute('value',kakaoId);
	frm.appendChild(hiddenInput);
	document.body.appendChild(frm);
	frm.submit();
	
}

//카카오 초기화
Kakao.init('9af0b209440991a98a4221fd3e573d44');
    
function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
      alert('로그인을 해주세요.');
      return
    }
    Kakao.Auth.logout(function() {
      location.href = "logout"; // 로그아웃 처리
	})
}


</script>
</body>
</html>