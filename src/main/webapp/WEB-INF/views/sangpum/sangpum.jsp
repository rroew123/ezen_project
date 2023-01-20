<%@page import="java.util.List"%>
<%@page import="co.kr.ezen_project.vo.SangCodeSpecVO"%>
<%@page import="co.kr.ezen_project.service.SangpumServiceImpl"%>
<%@page import="co.kr.ezen_project.service.SangpumService"%>
<%@page import="co.kr.ezen_project.dao.SangpumDAO"%>
<%@page import="co.kr.ezen_project.vo.SangpumVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    $.ajax({
      type: "GET",
      url: "http://localhost/sangpum/sangpum?SangCode=abc1234&sangColor=3",
      dataType: "text",
      contentType : "application/x-www-form-urlencoded;charset=UTF-8"
      error: function() {
        console.log('통신실패!!');
      },
      success: function(data) {
        console.log("통신데이터 값 : " + data);
      }
    });
  });
</script>

</head>

<body>
	<%-- <jsp:include page="header.jsp"/> --%>
	<div class="jumbotron">
		<div class="">
			<h1 class="">상품 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="">
			<div class="">
				<h3>${SangpumInfo.sangName}</h3>
				<p>가격 : ${SangpumInfo.price}</p>
				<p>상품코드 : ${SangpumInfo.sangCode}</p>
				<p>
					<c:forEach var="vo" items="${SangColor}">
						<a href="http://localhost/sangpum/sangpum?SangCode=abc1234&sangColor=${vo.sangColor}">${vo.sangColor}</a>&nbsp
					</c:forEach> 
				</p>
				<p>
					<c:forEach var="vo" items="${SangSize}">
						<span>${vo.sangSize}
					</c:forEach>
				</p>
				<p> </p>
				<p> 개</p>	<!-- 갯수 -->
				<h4>총  원</h4>	<!-- 총 가격 -->
				<p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a></p>
					<a href="./products.jsp" class="btn btn-secondary">상품
					 목록 &raquo;</a>
			</div>
		</div>
	</div>
	<button id="ajaxButton" type="button">Make a request</button>


<script>
function(){
	document.getElementById("ajaxButton").addEventListener('click', makeRequest);
	 function makeRequest() {
		 console.log("나오나 확인용")
		 location.href="/sangpum/sangpum?SangCode=abc1234&SangColor=3";
	 }
}
/* 
	(function() {
	  var httpRequest;
	  document.getElementById("ajaxButton").addEventListener('click', makeRequest);
	
	  function makeRequest() {
		location.href=/sangpum/sangpum?SangCode=abc1234&SangColor=3;
	    httpRequest = new XMLHttpRequest();
	
	    if(!httpRequest) {
	      alert('XMLHTTP 인스턴스를 만들 수가 없어요 ㅠㅠ');
	      return false;
	    }
	    httpRequest.onreadystatechange = alertContents;
	    httpRequest.open('GET', '/sangpum/sangpum?SangCode=abc1234&SangColor=3');
	    httpRequest.send();
	  }
	
	  function alertContents() {
		  
	    if (httpRequest.readyState === XMLHttpRequest.DONE) {
	      if (httpRequest.status === 200) {
	    	  location.href=/sangpum/sangpum?SangCode=abc1234&SangColor=3
	      } else {
	        alert('request에 뭔가 문제가 있어요.');
	      }
	    }
	  }
	})(); */
</script>

	
	<%-- <jsp:include page="footer.jsp"/> --%>

</body>
</html>