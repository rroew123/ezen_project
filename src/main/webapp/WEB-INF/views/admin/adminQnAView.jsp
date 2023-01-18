<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 상세페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>QnA 상세페이지</h1>
<form name="form1" method="post">
	<div>
		카테고리 : ${dto.qnaCat}
	</div>
	<div>
		제목
		<input name="brdTitle" id="brdTitle" value="${dto.brdTitle}">
	</div>
	<div>
		내용
		<textarea name="brdCntxt" id="brdCntxt">${dto.brdCntxt}</textarea>
	</div>
	<div>
		작성자 : ${dto.memId}
	</div>
	<div>
		작성일자 : ${dto.writDate}
	</div>
	<div style="width:650px; text-align: center">
		<input type="hidden" name="qnaNum" value="${dto.qnaNum}">
		<button type="button" id="btnDelete">삭제</button>
		<button type="button" id="btnHome">목록</button>
	</div>

</form>
<script>
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/admin/adminQnADeleteProc";
				document.form1.submit();
			}
		});
		
		$("#btnHome").click(function(){
			document.form1.action="${path}/admin/adminQnA";
			document.form1.submit();
	});
});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>