<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
.sangpumList{
	display: inline-block;
}
</style>
</head>
<body>
	<header><%@ include file="./../home_top.jsp"%></header>
	<c:if test="${sangListSize eq 0}">
		<h1>검색된 상품이 없습니다</h1>
	</c:if>
	<h3>검색된 상품의 갯수는 ${sangListSize}개 입니다</h3>
	<div>
		<form action="">
			<input type="button" value="인기순" onclick='searchOrby("soldCnt")'>
			<input type="button" value="최신순" onclick='searchOrby("rating")'>
			<input type="button" value="별점순" onclick='searchOrby("rate")'>
			<input type="button" value="할인률" onclick='searchOrby("saleRat")'>
		</form>
	</div>
	<c:forEach var="list" items="${sangList}">
		<span class="sangpumList"><a href="/sangpum/sangpum?sangCode=${list.sangCode}"><img src="/resources/img/Ezen.png" alt="" style="height: 300px; width: 300px; border: 1px solid black;"/></a>
			<br><span>${list.sangName}</span>
			<br><span>${list.price}</span>
			<!--사진이 들어갈 주소  /resource/sangpum/${list.typeOne}/${list.typeTwo}/${list.typeThree}/${list.sangCode}.img-->
		</span>
		
	</c:forEach>
	
<script type="text/javascript">
function searchOrby(orby){
	//결제나 쇼핑카트	ajax쓸 예정
	if(orby === 'soldCnt'){
		$('input[name=sangCnt]').attr('value', document.getElementById('count').innerText);
		$('input[name=price]').attr('value', document.getElementById('cost').innerText);
		document.sang.action="/sangpum/search?sangName="+${sangName}+"&orby=soldCnt";
		document.sang.submit();
	}else if(orby === 'rating'){
		$('input[name=sangCnt]').attr('value', document.getElementById('count').innerText);
		$('input[name=price]').attr('value', document.getElementById('cost').innerText);
		document.sang.action="/sangpum/search?sangName="+${sangName}+"&orby=rating";
		document.sang.submit();
	}else if(orby === 'rate'){
		$('input[name=sangCnt]').attr('value', document.getElementById('count').innerText);
		$('input[name=price]').attr('value', document.getElementById('cost').innerText);
		document.sang.action="/sangpum/search?sangName="+${sangName}+"&orby=rate";
		document.sang.submit();
	}else if(orby === 'saleRat'){
		$('input[name=sangCnt]').attr('value', document.getElementById('count').innerText);
		$('input[name=price]').attr('value', document.getElementById('cost').innerText);
		document.sang.action="/sangpum/search?sangName="+${sangName}+"&orby=saleRat";
		document.sang.submit();
	}
}
</script>
</body>
</html>