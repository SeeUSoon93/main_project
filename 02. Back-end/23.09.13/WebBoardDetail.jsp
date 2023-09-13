<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/WebBoardDetail.css">
</head>
<body>
	<div class="banner">banner</div>

    <div class="group">
        <div class="boardHeader">
            <h1>VIEW</h1>
        </div>
        <div class="contents">
            <div class="titleAndGood">
                <div class="boardTitle1">
                    <p>제 &nbsp;&nbsp;목</p>
                    <div class="boardTitle2">123123123</div>
                </div>
                <div class="boardGood1">
                    추천수 : 
                    <div class="boardGood2">1123</div>
                </div>
            </div>
            <div class="nickAndDate">
                <div class="nickName1">
                    <p>작성자</p>
                    <div class="nickName2">123123123</div>
                </div>
                <div class="date1">
                    <p>일 &nbsp;&nbsp;시</p>
                    <div class="date2">123123123</div>
                </div>
            </div>
            <div class="boardText1">
                <p>내 &nbsp;&nbsp;용</p>
                <div class="boardText2">123123123</div>
            </div>
        </div>
        <div class="button">
            <button class="btn1">목 록</button>
            <button class="btn2">수 정</button>
            <button class="btn2">삭 제</button>
        </div>

        <div class="boardRepleBox">
            <div class="boardHeader">
                <h2>COMMANT</h2>
            </div>
            <div class="boardReple">
                <textarea placeholder="댓글을 입력하세요"></textarea>
            </div>
            <div class="inputAndBtn">
                <input type="text" placeholder="닉네임을 입력하세요">
                <button class="btn3">작 성</button>
            </div>
            <div class="contour"></div>
            <div class="RepleListBox">
                <div class="repleHeader">
                    <div class="repleNick">닉네임</div>
                    <div class="repleDate">날 짜</div>
                    <button class="btn4">삭 제</button>
                </div>
                <div class="reple">
                </div>
            </div>
        </div>

    </div>
</body>
</html>