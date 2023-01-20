<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 상세페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>FAQ 상세페이지</h1>
<form name="form1" method="post">
	<div>
	카테고리<select name="faqCat" id="faqCat" value="">
		<option value="1">배송</option>
		<option value="2">교환</option>
		<option value="3">반품</option>
		<option value="4">마일리지</option>
		<option value="5">쿠폰</option></select>
	</div>
	<div>
		<input name="faqTitle" id="faqTitle" size="80" value="${dto.faqTitle}" placeholder="제목을 입력해주세요">
	</div>
	<div>
		<textarea name="faqCntxt" id="faqCntxt" rows="4" cols="80" placeholder="내용을 입력해주세요">${dto.faqCntxt}</textarea>
	</div>
	<div style="width:650px; text-align: center">
		<input type="hidden" name="faqNum" value="${dto.faqNum}">
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
		<button type="button" id="btnHome">목록</button>
	</div>
</form>
<script>
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/admin/adminFAQDeleteProc";
				document.form1.submit();
			}
		});
		
		$("#btnUpdate").click(function(){
			var faqTitle = $("#faqTitle").val();
			var faqCntxt = $("#faqCntxt").val();
			if(faqTitle == ""){
				alert("제목을 입력하세요");
				document.form1.faqTitle.focus();
				return;	
			}
			if(faqCntxt == ""){
				alert("내용을 입력하세요");
				document.form1.faqCntxt.focus();
				return;	
			}
			document.form1.action="${path}/admin/adminFAQUpdateProc"
			document.form1.submit();
		});
		
		$("#btnHome").click(function(){
				document.form1.action="${path}/admin/adminFAQ";
				document.form1.submit();
		});
	});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>