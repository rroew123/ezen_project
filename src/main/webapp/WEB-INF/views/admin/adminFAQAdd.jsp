<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 작성페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>FAQ 작성페이지</h1>
<form name="form1" method="post" action="${path}/admin/adminFAQInsertProc">
	<div>
	카테고리<select name="faqCat" id="faqCat">
		<option value="1">배송</option>
		<option value="2">교환</option>
		<option value="3">반품</option>
		<option value="4">마일리지</option>
		<option value="5">쿠폰</option></select>
	</div>
	<div>
		<input name="faqTitle" id="faqTitle" size="80" placeholder="제목을 입력해 주세요">
	</div>
	<div>
		<textarea name="faqCntxt" id="faqCntxt" rows="4" cols="80" placeholder="내용을 입력해 주세요"></textarea>
	</div>
	<div style="width:650px; text-align:center;">
		<button type="button" id="btnSave">확인</button>
		<button type="reset">취소</button>
	</div>
</form>

<script>	
	$(document).ready(function(){
		$("#btnSave").click(function(){
			var faqTitle = $("#faqTitle").val();
			var faqCntxt = $("#faqCntxt").val();
			if(faqTitle == ""){
				alert("제목을 입력하세요");
				document.form1.faqTitle.focus();
				return;
			}
			if(faqCntxt == ""){
				alert("내용을 입력하세요");
				docuemt.form1.faqCntxt.focus();
				return;
			}
			document.form1.submit();
		});
	});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>