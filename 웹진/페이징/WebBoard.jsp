<%@page import="org.apache.ibatis.reflection.SystemMetaObject" %>
	<%@page import="com.smhrd.model.BoardDAO" %>
		<%@page import="com.smhrd.model.BoardVO" %>
			<%@page import="java.util.List" %>
				<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
					<!DOCTYPE html>
					<html>

					<head>
						<meta charset="UTF-8">
						<title>Insert title here</title>
						<link rel="stylesheet" href="./css/WebBoard.css">
						<link rel="stylesheet" href="fontstyle.css" />
					</head>

					<body>
						<%@ include file="MainHeader.jsp" %>

							<div class="group">
								<form>
									<span class="right"> <select>
											<option value="작성자" name="nickName">작성자</option>
											<option value="제 목" name="제 목">제 목</option>
										</select> <input type="text">
										<button class="gradient" type="submit">검 색</button>
									</span>
								</form>

								<br>
								<table>
									<tr>
										<th>번 호</th>
										<th>제 목</th>
										<th>작성자</th>
										<th>일 시</th>
										<th>추천수</th>
									</tr>
									<% List<BoardVO> boardList = new BoardDAO().WebBoard();
										System.out.println("게시판 리스트 사이즈 : "+boardList.size());

										int paging;
										if(boardList.size()%10 != 0){
										paging = boardList.size()/10+1;
										}else{
										paging = boardList.size()/10;
										}
										System.out.println("게시판 페이지 수 : "+paging);

										/* 페이지 번호 불러오기 */
										int nowPage = Integer.parseInt(request.getParameter("page"));
										System.out.println("현재 페이지 : "+nowPage+"페이지임");



										for(int i = (boardList.size()-1)-(10*(nowPage-1)); i >= boardList.size()-10;
										i--) { %>
										<tr>
											<td class="center">
												<%= i+1 %>
											</td>
											<td class="left"><a
													href="WebBoardDetail.jsp?boardNum=<%=boardList.get(i).getBoardNum() %>">
													<%= boardList.get(i).getBoardTitle() %>
												</a></td>
											<td class="center">
												<%= boardList.get(i).getNickName() %>
											</td>
											<td class="center">
												<%= boardList.get(i).getBoardDate() %>
											</td>
											<td class="center">
												<%= boardList.get(i).getBoardGood() %>
											</td>
										</tr>
										<% } %>

								</table>
								</br> <span class="right">
									<button class="gradient">
										<a href="WebBoardInsertjsp.jsp">글쓰기</a>
									</button>
								</span>
								<ul class="center">
									<li><a href="#">&lt;</a></li>
									<% for(int i=1; i<=paging ; i++){ if(i==1){ %>
										<li><a href="href=" WebBoard.jsp?page=1">
												<%= i %>
											</a></li>
										<%}else{ %>
											<li><a href="href=" WebBoard.jsp?page=<%=i%>"><%= i %></a></li>
											<%} }%>
												<li><a href="#">&gt;</a></li>
								</ul>

							</div>
					</body>

					</html>