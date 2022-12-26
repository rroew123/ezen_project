<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<html>
<head >
	<title>Home</title>
</head>
<body>
	<header>
		<h1>
			Hello world!  
		</h1>
	</header>
	<c:if test="${mem != null}">
		<a href="/member/logout">로그아웃</a><br />
		<a href="/member/memUpdate">정보변경</a><br />
		<a href="/member/memCheck">회원정보 보기</a><br />
	 		<span>${mem.memName}님 환영합니다.</span>
	 </c:if>	
	 <c:if test="${mem == null}"> 
		<a href="/member/loginForm">로그인</a>
		<a href="/member/memberJoin">회원가입</a>
		
	
		<div id="sangpumlist">
			<section>${boardList }</section>
			<section>02번째 상품들 리스트</section>
			<section>03번째 상품들 리스트</section>
			<section>04번째 상품들 리스트</section>
		</div>
	</c:if>
	<footer>
		<h3>꼬릿말이 여기 들어감</h3>
	</footer>
</body>
</html>
