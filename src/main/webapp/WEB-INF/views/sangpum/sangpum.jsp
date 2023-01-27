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

<style type="text/css">
*{
	padding : 0px;
	margin : 0px;
	
}

#container{
	width : 60%;
	margin : 0 auto;
}
#contents{
	border : 1px solid black;
}
#leftbox{
	display: inline-block;
	width : 100px;
	border : 1px solid black;
}
#centerbox{
	display: inline-block;
	width : 450px;
	border : 1px solid black;
}
#rightbox{
	display: inline-block;
	width : 300px;
	border : 1px solid black;
}
#sangInfo, #review, #sangQnA{
	height: 600px;
}

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

.subheader{
	whith : 100%;
	height: 100px;
	border : 1px solid black;
}

.subTitle{
	display: inline-block;
	whith : 33%;
	height: 100px;
	border : 1px solid black;
}
   
</style>
</head>

<body>
	<header><%@ include file="./../home_top.jsp"%></header>
	<div id="container">
		<div id="contents">
			<div id="leftbox">
				<p>asdasd</p>
			</div>
			<div id="centerbox">
				<img src="https://dummyimage.com/450x600/000/fff" alt="상품이미지" />
			</div>
			<div id="rightbox">
			
				<div class="jumbotron">
					<div class="">
						<h1 class="">상품 정보</h1>
					</div>
				</div>
				
				<div class="container">
					<div class="">
						<div class="">
							<h3>${sangpumInfo.sangName}</h3>
							<p>가격 : ${sangpumInfo.price}</p>
							<p>상품코드 : ${sangpumInfo.sangCode}</p>
							<p>
								<c:forEach var="vo" items="${sangColor}">	
										<a href="/sangpum/sangpum?sangCode=${sangpumInfo.sangCode}&sangColor=${vo.sangColor}">${vo.sangColor}</a>&nbsp
								</c:forEach>
							</p>
							<p>
								<c:forEach var="vo" items="${sangSize}">
									<label>
										<input type="radio" name="sangSize" id="sangSize" value="sangSize">
										<span>${vo.sangSize}</span>
									</label>
								</c:forEach>
							</p>
							 <form name="sang">
								<input type='button' onclick='count("plus")' value='+'/>
								<span><span id='sangCnt'>1</span>개</span>
								<input type='button' onclick='count("minus")' value='-'/>
								<input type="hidden" id="sangSize" value="${sangSize}">
								<input type="hidden" id="sangColor" value="${sangColor}">
								<input type="hidden" id="sangCode" value="${sangCode}">
								<br />	<!-- 갯수 -->
								<div>총 금액 <span id="cost">0</span>원</div>	<!-- 총 가격 -->
								<input type="button" value="장바구니" onclick='sangmove("cart")'>
								<input type="button" value="결제" onclick='sangmove("pay")'>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="subcontents">
			<div id="subheader" class="subheader">
				<div class="subTitle"><a href="#review" >리뷰로 가자</a></div>
				<div class="subTitle"><a href="#sangInfo">상품상세로 가자</a></div>
				<div class="subTitle"><a href="#sangQnA">상품 qna로 가자</a></div>
			</div>
			<div id="review" >
				리뷰는 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi vel sed velit quisquam dolore iusto recusandae earum sunt magnam dolores aspernatur totam molestias tempora animi odio! Deleniti placeat praesentium earum.
			</div>
			<div id="sangInfo" >
				상품정보는 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi vel sed velit quisquam dolore iusto recusandae earum sunt magnam dolores aspernatur totam molestias tempora animi odio! Deleniti placeat praesentium earum.
			</div>
			<div id="sangQnA" >
				상품 qna는 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi vel sed velit quisquam dolore iusto recusandae earum sunt magnam dolores aspernatur totam molestias tempora animi odio! Deleniti placeat praesentium earum.
			</div>
		</div>
		
	</div>
<script>


function count(type)  {	//갯수 올리고 내리기
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

function cost(number){	//총액 계산 함수
	const resultElement = document.getElementById('cost');
	resultElement.innerText = number * ${sangpumInfo.price}
}

function sangmove(move){
	//결제나 쇼핑카트	ajax쓸 예정
	if(move ==='cart'){
		document.sang.action="/sangpum/shoppingcartProc";
		document.sang.submit();
	}else if(move ==='pay'){
		document.sang.action="/admin/adminQnADeleteProc";
		document.sang.submit();
	}
}

$("input[name='sangSize']").change(function() {//사이즈선택 시
	if(${scsvo.sangColor} == 0){
		$("input[name='sangSize']").prop('checked', false);
		return alert("색먼저 선택해주세요");
	}
	cost(1);
  });
  
/* $("input[name='sangColor']").change(function() {//컬러선택 시..ㅠ 실패
    var selColor = $("input[name='sangColor']:checked").val();
    var sangCode = "${sangpumInfo.sangCode}";
	$.ajax({
      	type: "GET",
     	url: "/sangpum/selColorProc",
    	dataType : "json",
     	data : {
    		"sangCode" : sangCode,
    		"sangColor" : selColor
    	}	
	});
    location.href="/sangpum/sangpum?sangCode=${sangpumInfo.sangCode}";
  }); */



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