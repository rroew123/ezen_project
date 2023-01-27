<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shoppingcart</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>

.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}


.top {
	text-align: left;
	box-sizing: border-box;
	color: rgb(51, 51, 51);
	font-size: 20px;
	line-height: 1.6;
	vertical-align: baseline;
	margin: 0px;
	padding: 0px;
	border-width: 0px;
	border-style: initial;
	border-color: initial;
	border-image: initial;
	outline: 0px;
	font-family: "Poppins", "Apple SD Gothic Neo", "Malgun Gothic",
		sans-serif;
	background: linear-gradient(to bottom, #FCE2FC, #FCE0A4);
	min-height: 170px;
	position: relative;
	margin: 20px;
	text-align: center;
}

.price-title {
	text-align: left;
	box-sizing: border-box;
	line-height: 1.6;
	vertical-align: baseline;
	margin: 0px;
	padding: 0px;
	border-width: 0px;
	border-style: initial;
	border-color: initial;
	border-image: initial;
	outline: 0px;
	font-family: "Poppins", "Apple SD Gothic Neo", "Malgun Gothic",
		sans-serif;
	display: table-cell;
	font-size: 20px;
	color: #888;
}

.price-won {
	box-sizing: border-box;
	line-height: 1.6;
	vertical-align: baseline;
	margin: 0px;
	padding: 0px;
	border-width: 0px;
	border-style: initial;
	border-color: initial;
	border-image: initial;
	outline: 0px;
	font-family: "Poppins", "Apple SD Gothic Neo", "Malgun Gothic",
		sans-serif;
	position: relative;
	display: table-cell;
	font-size: 20px;
	color: #888;
}

#use_account {
	text-align: left;
	box-sizing: border-box;
	line-height: 1.6;
	vertical-align: baseline;
	margin: 0px;
	padding: 0px;
	border-width: 0px;
	border-style: initial;
	border-color: initial;
	border-image: initial;
	outline: 0px;
	font-family: "Poppins", "Apple SD Gothic Neo", "Malgun Gothic",
		sans-serif;
	display: table-cell;
	font-size: 20px;
	color: #333;
}

.right-content {
	text-align: right;
	margin-right: 150px;
	line-height: 10px;
}
.Cside {
	position: fixed;
	right: 1%;
	top: 60%;
	cursor: pointer;
	font-size: 44px;
	width: 77px;
}
</style>
</head>
<body>
	<%@ include file="member_top.jsp" %>
	<div class="top">

		<div class="wrap_inner ">
			<div class="navi">
				홈 &gt; <a href="">마이페이지 &gt; </a> <a href="" class="active">장바구니</a>
			</div>
			<div id="my_menu" class="my_menu">

				<dl>
					<dt>
						<form name="sang" action="">
						<c:forEach var="aa" items="${shop}">
						<table>
						<tr>
						<th><label for="${aa.orderNum}"><input name="orderNum" type="checkbox" id="${aa.orderNum}" value="${aa.orderNum}"/>이미지들어가는칸</th>
						<th>상품이름</th>
						<th>사이즈</th>
						<th>상품개수</th>
						<th>색상</th>
						<th>가격</th>
						</label>
						</tr>
							<tr>
							<td><a href="/sangpum/sangpum?sangCode=${aa}"><img src="https://dummyimage.com/50x50/000/fff" alt="" /></a>	</td>
							<td>${aa.sangName}</td>
							
							<td>${aa.sangSize}</td>
							<td>${aa.sangCnt}</td>
							<td>${aa.sangColor}</td>
							<td>${aa.price}</td>
						</tr>
						
						
						</table>
						
						</c:forEach>
						<input type="button" value="주문결제" onclick='sangmove("pay")'>
                        <input type="button" value="선택삭제" onclick='sangmove("del")'>
					
						</form>
						<div class="right-content">
							
							</div>
					</dt>
					<dd class="order">
						<a href="">주문/배송조회</a><a class="star1 " onclick="stargo('order')"></a>
					</dd>
					<dd class="today_goods">
						<a href="">최근 본 상품</a><a class="star1"
							onclick="stargo('today_goods')"></a>
					</dd>
					
				</dl>
			</div>
		</div>
		
		
		
	</div>
	<div class="cart-sub-header">
		<div class="left-content">
			<ul>
				<li><label for="cart-allgoods"><input type="checkbox"
						id="cart-allgoods"
						onclick="MemberProc.with_check('.cartIdxs:not(.soldout)');cartCalcul();">
						전체상품<span class="checkgh">[</span><span id="allgoods-cnt">0</span><span
						class="checkgh">/</span>1<span class="checkgh">]</span></label></li>
				<li><label for="cart-todaygoods"><input type="checkbox"
						id="cart-todaygoods"
						onclick="MemberProc.with_check('.cartIdxs[data-today_go=1]:not(.soldout)');cartCalcul();">
						오늘출발<span class="checkgh">[</span><span id="todaygoods-cnt">0</span><span
						class="checkgh">/</span>1<span class="checkgh">]</span></label></li>
			</ul>
			
		</div>

		<div class="price-title">
			선택한 상품 <span class="cart-total-ea">0</span>개
		</div>
		<div class="price-won">
			<span id="total_price">0</span>원
		</div>
		<div style="text-align: center;">
			배송비<span id="del_account"> 0</span>원
			<div class="deliveryInfo">
				<img src="" style="vertical-align: middle; margin-top: -3px;">
				<span>0원이상</span> 구매시 <span>무료배송</span> 입니다.
			</div>
		</div>
		<div style="color: #333">
			<strong id="use_account">총 결제 예상금액 0원</strong>
		</div>
		<span class="okbox"><a style="border: 0" href=""
			onclick="MemberProc.choose_buy();">선택상품 주문하기</a></span> <span class="canbox"><a
			href="" onclick="MemberProc.all_buy();">전체상품 주문하기</a></span>
	</div>
	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="./shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>

	<script>
		function clickTop() {
			window.scrollTo(0, 0);
		}

		function clickLast() {
			window.scrollTo(99999, 99999);
		}
		
		 function sangmove(move){
			   //결제나 쇼핑카트   
			   if(move ==='del'){  //쇼핑카트에 담기
				  
			      document.sang.action="/member/cartDelProc";
			      document.sang.submit();
			   }else if(move ==='pay'){  //결제하기
			      document.sang.action="/member/paypage";
			      document.sang.submit();
			   }
			} 
	</script>
</body>
</html>