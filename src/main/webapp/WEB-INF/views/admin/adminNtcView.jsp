<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>공지사항 상세페이지</h2>
<form name="form1" method="post">
	<div>
		작성일자 : ${dto.relDate}
	</div>
	<div>
		조회수 : ${dto.viewCnt}
	</div>
	<div>
		제목
		<input name="ntcTitle" id="ntcTitle" size="80" value="${dto.ntcTitle}" placeholder="제목을 입력해주세요">
	</div>
	<div>
		내용
		<textarea name="ntcCntxt" id="ntcCntxt" rows="4" cols="80" placeholder="내용을 입력해주세요">${dto.ntcCntxt}</textarea>
	</div>
	<div style="width:650px; text-align: center">
		<input type="hidden" name="ntcNum" value="${dto.ntcNum}">
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
		<button type="button" id="btnHome">목록</button>
	</div>
</form>
<script>
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/admin/adminDeleteProc";
				document.form1.submit();
			}
		});
		
		$("#btnUpdate").click(function(){
			var ntcTitle = $("#ntcTitle").val();
			var ntcCntxt = $("#ntcCntxt").val();
			if(ntcTitle == ""){
				alert("제목을 입력하세요");
				document.form1.ntcTitle.focus();
				return;	
			}
			if(ntcCntxt == ""){
				alert("내용을 입력하세요");
				document.form1.ntcCntxt.focus();
				return;	
			}
			document.form1.action="${path}/admin/adminUpdateProc"
			document.form1.submit();
		});
		
		$("#btnHome").click(function(){
				document.form1.action="${path}/admin/adminNotice";
				document.form1.submit();
		});
	});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>