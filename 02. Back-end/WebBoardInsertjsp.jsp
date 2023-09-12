<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<link rel="stylesheet" href="./WebBoardInsert.css">
<body>
	<div class="banner">banner</div>

	<div class="group">
        <div class="boardHeader">
            <h1>게시글 작성</h1>
        </div>
        <div class="boardWrite">
            <div class="writeLeft">
                <div class="nickName1">
                    작성자
                </div>
                <div class="boardTitle1">
                    제 &nbsp;&nbsp;목
                </div>
                <div class="boardText1">
                    내 &nbsp;&nbsp;용
                </div>
            </div>
            <div class="writeRight">
                <div class="nickName2">
                    <input type="text" placeholder="닉네임을 입력하세요">
                </div>
                <div class="boardTitle2">
                    <input type="text" placeholder="제목을 입력하세요">
                </div>
                <div class="boardText2">
                    <textarea placeholder="내용을 입력하세요"></textarea>
                    <div><input type="file"></div>
                    <div class="writeBtn"><a href="#">작 성</a></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>