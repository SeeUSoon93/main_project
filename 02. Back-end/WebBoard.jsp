<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="WebBoard.css">
</head>
<body>
	<div class="banner">banner</div>

    <div class="group">
        <form>
            <span class="right">
                <select>
                    <option value="제 목" name="제 목">제 목</option>
                    <option value="글쓴이" name="글쓴이">글쓴이</option>
                </select>
                <input type="text">
                <button class="gradient">검 색</button>
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
            <tr>
                <td class="center">1</td>
                <td class="left">게시글 1 입니다.</td>
                <td class="center">김준석</td>
                <td class="center">2022-05-18</td>
                <td class="center">15</td>
            </tr>
            <tr>
                <td class="center">2</td>
                <td class="left">게시글 2 입니다.</td>
                <td class="center">김준석</td>
                <td class="center">2022-05-18</td>
                <td class="center">15</td>
            </tr>
            <tr>
                <td class="center">3</td>
                <td class="left">게시글 3 입니다.</td>
                <td class="center">김준석</td>
                <td class="center">2022-05-18</td>
                <td class="center">15</td>
            </tr>
        </table>
        </br>
        <span class="right">
            <button class="greylist">목 록</button>
            <button class="gradient">글쓰기</button>
        </span>
        <ul class="center">
            <li><a href="#">&lt;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">&gt;</a></li>
        </ul>

    </div>
</body>
</html>