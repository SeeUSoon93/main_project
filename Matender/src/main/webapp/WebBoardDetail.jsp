<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Boared_RepleDAO"%>
<%@page import="com.smhrd.model.Boared_RepleVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.ImgVO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/WebBoardDetail.css">
<link rel="stylesheet" href="./css/fontstyle.css" />
</head>
<body>

	<%@ include file="MainHeader.jsp"%>

	<%
	/* 게시판 번호 불러오기 */
	String boardNum = request.getParameter("boardNum");
	BoardVO boardInfo = new BoardDAO().showText(boardNum);

	System.out.println("게시글 제목 : " + boardInfo.getBoardTitle());
	System.out.println("게시글 작성자 : " + boardInfo.getNickName());

	/* 이미지 불러오기 */
	ImgVO imgInfo = new BoardDAO().showImg(boardNum);
	if (imgInfo != null) {
		System.out.println("이미지 파일 이름 : " + imgInfo.getFilename());
	}
	%>

	<div class="group">
		<div class="boardHeader">
			<h1>VIEW</h1>
		</div>
		<div class="contents">
			<div class="titleAndGood">
				<div class="boardTitle1">
					<p>제 &nbsp;&nbsp;목</p>
					<div class="boardTitle2" align="left"><%=boardInfo.getBoardTitle()%></div>
				</div>
				<div class="boardGood1" align="center">
					<input type="button" value="추천수 :" id="good">
					<div class="boardGood2"><%=boardInfo.getBoardGood()%></div>

				</div>

				<!-- /* 추천하기 */ -->
				<script type="text/javascript">
					/* 추천 수 늘리기 */		
					$('#good').on('click', function(){
						var boardNum = "<%=boardInfo.getBoardNum()%>";
						console.log(boardNum);
						$.ajax({
							url : "boardGoodService", /* 어디로 보낼지 */
							data : {"boardNum" : boardNum}, /* 어떤 데이터를 보낼지 */
							datatype : "text", /* 어떤 데이터 타입으로 받아올지 */
							success : (data)=>{
								if(data != null){
									$('.boardGood2').html(data)
								}
							}, /* 성공 시 */
							error : ()=>{
								alert('추천 실패');
							}, /* 실패 시 */
						})
					});	
				</script>

			</div>
			<div class="nickAndDate">
				<div class="nickName1">
					<p>작성자</p>
					<div class="nickName2" align="left"><%=boardInfo.getNickName()%></div>
				</div>
				<div class="date1">
					<p>일 &nbsp;&nbsp;시</p>
					<div class="date2" align="left"><%=boardInfo.getBoardDate()%></div>
				</div>
			</div>
			<div class="boardText1">
				<p>내 &nbsp;&nbsp;용</p>
				<div class="boardText2">
					<%
					if (imgInfo != null) {
					%>
					<img src="./boardFile/<%=imgInfo.getFilename()%>" align="center"><br>
					<%
					}
					%>
					<p align="left"><%=boardInfo.getBoardText()%></p>
				</div>
			</div>
		</div>
		<div class="button">
			<button class="btn1">
				<a href="javascript:history.back();" style="color: white">목 록</a>
			</button>
			<%-- <button class="btn2"><a href="WebBoardUpdateService?boardNum=<%=boardInfo.getBoardNum()%>">수 정</a></button> --%>
			<%
			if (login != null) {
				if (boardInfo.getNickName().equals(login.getNickName())) {
					System.out.println("같은 작성자입니다.");
			%>
			<button class="btn1"><a href="WebBoardDelService?boardNum=<%=boardInfo.getBoardNum()%>">삭 제</a></button>
			<%
			} else {
			System.out.println("다른 작성자입니다.");
			}
			} else {
			System.out.println("로그아웃 상태입니다.");
			}
			%>
		</div>


		<%
		login = (MemberVO) session.getAttribute("loginInfo");
		String nick;
		if (login == null) {
			nick = "로그인하세요";
		} else {
			nick = login.getNickName();
		}
		%>


		<div class="boardRepleBox">
			<div class="boardHeader2">
				<h2>COMMANT</h2>
			</div>
			<div class="boardReple">
				<textarea placeholder="댓글을 입력하세요" name="repleCon"></textarea>
			</div>
			<div class="inputAndBtn">
				<input type="text" value=<%=nick%> name="nickName" class="writerinput">
				<input type="submit" value="작 성" id="repleSubmit" class="replebtn">
			</div>
			<div class="contour"></div>
			<div class="RepleListBox">
				<div class="repleHeader">
					<!-- 이미 있는 리플 -->
					<div class="reple">
						<!-- 리플 불러오기 -->
						<%
						List<Boared_RepleVO> repleList = new Boared_RepleDAO().showReple(boardNum);
						if (repleList != null) {
							System.out.println("댓글 리스트 사이즈 : " + repleList.size());

							for (int i = repleList.size() - 1; i >= 0; i--) {
								%>
								<div class="replebox1">
									<div class="repleNick">
										<p><%=repleList.get(i).getNickName()%></p>
										<%
										if (login != null) {
											if (repleList.get(i).getNickName().equals(login.getNickName())) {
												System.out.println("같은 댓글 작성자입니다.");
										%>
										<input type="button" onClick="location.href='RepleDelService?repleNo=<%=repleList.get(i).getRepleNo()%>&boardNum=<%=boardInfo.getBoardNum()%>'" value="&times;" class="btn4">
										
										<%
											} else {
												System.out.println("다른 작성자입니다.");
											}
										} else {
											System.out.println("로그아웃 상태입니다.");
										}
										%>
									
									</div>
									<div class="repleCon"><%=repleList.get(i).getRepleCon()%></div>
								</div>
								<%
							}
						}
						%>
					</div>
				</div>
			</div>
		</div>


		<%
		if (login != null) {
		%>
		<!-- 댓글 쓰기 -->
		<script type="text/javascript">	
			$('#repleSubmit').on('click', function(){
			    var boardNum = "<%=boardInfo.getBoardNum()%>";			
			    var nickName = "<%=nick%>";
			    var repleCon = $('textarea[name=repleCon]').val();
			    console.log(boardNum);
			    $.ajax({
			        url : "RepleInsertService", /* 어디로 보낼지 */
			        data : {
			            "boardNum" : boardNum,
			            "nickName" : nickName,
			            "repleCon" : repleCon
			        }, /* 어떤 데이터를 보낼지 */
			        datatype : "text", /* 어떤 데이터 타입으로 받아올지 */
			        success : (data)=>{
			            if(data != null){
			                location.reload();
			            }
			        }, /* 성공 시 */
			        error : ()=>{
			            alert('댓글 실패');
			        }, /* 실패 시 */
			    });
			});
		</script>
		<% } %>

	</div>

	<br>
	<br>
	<br>


</body>
</html>