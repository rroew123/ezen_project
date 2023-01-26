<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p align="center">
    <a href="<%=request.getContextPath() %>/member/customer/?faqCate=1">취소</a> | 
    <a href="<%=request.getContextPath() %>/member/customer/?faqCate=2">반품</a> | 
    <a href="<%=request.getContextPath() %>/member/customer/?faqCate=3">교환</a> | 
    <a href="<%=request.getContextPath() %>/member/customer/?faqCate=4">AS</a>
</p>
</body>
</html>