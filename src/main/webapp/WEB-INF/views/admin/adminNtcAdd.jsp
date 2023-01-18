<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>공지사항 작성</h2>
<form name="form1" method="post" action="${path}/admin/adminInsertProc">
	<div>
		제목
		<input name="ntcTitle" id="ntcTitle" size="80" placeholder="제목을 입력해 주세요">
	</div>
	<div>
		내용
		<textarea name="ntcCntxt" id="ntcCntxt" rows="4" cols="80" placeholder="내용을 입력해 주세요"></textarea>
	</div>
	<div style="width:650px; text-align:center;">
		<button type="button" id="btnSave">확인</button>
		<button type="reset">취소</button>
	</div>
</form>
<%@ include file="bottom.jsp" %>
<script>	
	$(document).ready(function(){
		$("#btnSave").click(function(){
			var ntcTitle = $("#ntcTitle").val();
			var ntcCntxt = $("#ntcCntxt").val();
			if(ntcTitle == ""){
				alert("제목을 입력하세요");
				document.form1.ntcTitle.focus();
				return;
			}
			if(ntcCntxt == ""){
				alert("내용을 입력하세요");
				docuemt.form1.ntcCntxt.focus();
				return;
			}
			document.form1.submit();
		});
	});
</script>
</body>
</html>