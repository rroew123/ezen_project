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

<style type="text/css">
	input[type="radio"] {
        display: none;
    }
 
    input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
    }
    
    input[type="radio"]:checked + span {
        background-color: black;
        color: white;
    }
</style>
</head>

<body>
	<%@ include file="./../home_top.jsp"%>
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
						<a href="http://localhost/sangpum/sangpum?SangCode=${SangpumInfo.sangCode}&sangColor=${vo.sangColor}">${vo.sangColor}</a>&nbsp	
					</c:forEach>
				</p>
				<p>
					<c:forEach var="vo" items="${SangSize}">
						<label>
							<input type="radio" name="${vo.sangSize}" value="SangSize">
							<span>${vo.sangSize}</span>
						</label>
					</c:forEach>
				</p>
				 <form action="">
					<input type='button' onclick='count("plus")' value='+'/>
					<span><span id='sangCnt'>1</span>개</span>
					<input id="minus" type='button' onclick='count("minus")' value='-'/>
					
					<br />	<!-- 갯수 -->
					<div>총 금액 <span id="cost">0</span>원</div>	<!-- 총 가격 -->
					<a href="#" class="btn btn-info"> 장바구니 &raquo;</a><br />
					<a href="./products.jsp" class="btn btn-secondary">결제 &raquo;</a>
				</form>
			</div>
		</div>
	</div>

<script>


function count(type)  {
	// 결과를 표시할 element
	const resultElement = document.getElementById('sangCnt');
	
	// 현재 화면에 표시된 값
	let number = resultElement.innerText;
	
	// 더하기/빼기
	if(type === 'plus') {
	  number = parseInt(number) + 1;
	}else if(type === 'minus')  {
	  number = parseInt(number) - 1;
	  
	  if(parseInt(number) === 0 ){
		  document.getElementById('minus').hide();
		}
	}
	
	
	// 결과 출력
	resultElement.innerText = number;
	cost(number);
}

function cost(number){
	const resultElement = document.getElementById('cost');
	resultElement.innerText = number * ${SangpumInfo.price}
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