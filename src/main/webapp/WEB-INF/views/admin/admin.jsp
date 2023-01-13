<%@ page language="java" contentType="text/html; charset=UTF-8"
   trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>관리자 페이지</title>
	<link rel="stylesheet" href="/ezen_project/src/main/webapp/WEB-INF/views/admin/basic.css"/>
</head>

<body>
<header id = "header">
	<h1>쇼핑몰 관리자 페이지</h1>
</header>
<nav id="index">
	<a href=adminMember.jsp>회원관리</a> &nbsp;&nbsp;&nbsp;
	<a href=adminFinance.jsp>재무제표</a> &nbsp;&nbsp;&nbsp;
	<a href=adminSang.jsp>상품관리</a> &nbsp;&nbsp;&nbsp;
	<a href=adminQnA.jsp>QnA</a> &nbsp;&nbsp;&nbsp;
	<a href=adminNotice.jsp>공지사항</a> &nbsp;&nbsp;&nbsp;
</nav>

</body>
</html>
