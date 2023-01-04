<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/9af1085f00.js" crossorigin="anonymous"></script>
</head>
<style>
.container {
	margin: 0 auto;
}
/* ==================container ======================= */
.header {
	border: 3px solid black;
	height: 200px;
}
/* ==================== header ========================= */
.side {
	float: left;
	border: 3px solid green;
	height: 500px;
}
/* ==================== side ========================= */
.contents {
	border: 3px solid gray;
	text-align: center;
	height: 500px;
}

.Cheader {
	line-height: 50px;
}

li {
	list-style: none;
	
	text-align: left;
}
.Cside{
	position: absolute;
	right:1.5%;
	top:70%;
	cursor: pointer;
	font-size: 50px;
	width: 100px;
}

/* ==================== contents ========================= */
.footer {
	border: 1px solid black;
	text-align: center;
}

/* ==================== footer ========================= */
</style>

<body>
	<div class="container">
		<div class="header">Header</div>
		<div class="side">
			<ul>
				<li><a href="">공지사항</a></li>
				<li><a href="">쇼핑FAQ</a></li>
				<li><a href="">배송</a></li>
				<li><a href="">어쩌구</a></li>
				<li><a href="">저쩌구</a></li>
				<li><a href="">공지사항</a></li>
				<li><a href="">쇼핑FAQ</a></li>
				<li><a href="">배송</a></li>
				<li><a href="">어쩌구</a></li>
				<li><a href="">저쩌구</a></li>
				<li><a href="">공지사항</a></li>
				<li><a href="">쇼핑FAQ</a></li>
				<li><a href="">배송</a></li>
				<li><a href="">어쩌구</a></li>
				<li><a href="">저쩌구</a></li>
			</ul>
		</div>
		<div class="contents">
			<table>
				<p>공지사항</p>
				<p>쇼핑몰 공지사항에 대해 알려드립니다</p>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<br />
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
			</table>
			<div class="Cside">
			<i class="fa-regular fa-circle-up" style=""></i>
			<i class="fa-regular fa-circle-down"></i>
		</div>
		</div>

		<div class="footer">
			<p>푸터입니다</p>
		</div>
	</div>
</body>
</html>