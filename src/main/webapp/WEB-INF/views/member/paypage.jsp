<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<style>
table {
	width: 700px;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: 'Cairo', sans-serif;
	margin: auto;
}
table td {
	padding: 10px;
	background-color: #eee;
}
table th {
	background-color: #333;
	color: #fff;
	padding: 10px;
}
.container{
	margin-top:  50px;
}
</style>

<%@ include file="../home_top.jsp"%>
<body>
<div class="container">
	<table>

		<tr>
			<th>성함</th>
			<th>번호</th>
			<th>주소</th>
			<th>배송요청사항</th>
		</tr>

		<tr>
			<td>${userInfo.memName}</td>
			<td>${userInfo.phone}</td>
			<td>${userInfo.address}</td>
			<td><select name="" id="">
					<option value="1">배송 시 요청사항을 선택해주세요</option>
					<option value="2">부재 시 경비실에 맡겨주세요</option>
					<option value="3">부재 시 택배함에 넣어주세요</option>
					<option value="3">부재 시 집 앞에 놔주세요</option>
					<option value="3">배송 전 연락 바랍니다</option>
			</select></td>
		</tr>
	</table>
	<script>
		var totalcost = 0;
	</script>
	<form action="/kakaoPay" name="paylist" method="post">
		<input type="hidden" value="memId" name="${userInfo.memId}"/>
		<c:forEach var="pay" items="${pay}">
		<input type="checkbox" value="${pay.orderNum}" name="orderNumList" checked="checked" hidden="hidden"/>

			<table>
				<tr>
					<th>이미지들어가는칸</th>
					<th>상품이름</th>
					<th>사이즈</th>
					<th>상품개수</th>
					<th>색상</th>
					<th>가격</th>

				</tr>
				<tr>
					<td><a href="/sangpum/sangpum?sangCode=${pay}"><img
							src="../resources/img/Ezen.png" alt="" style="width: 150px; height : 150px;"/></a></td>

					<td>${pay.sangName}</td>
					<td>${pay.sangSize}</td>
					<td>${pay.sangCnt}</td>
					<td>${pay.sangColor}</td>
					<td>${pay.price}</td>
					<script>
						totalcost = totalcost + ${pay.price};
					</script>
			</table>
		</c:forEach>
		<div>총 금액 <span id="cost">0</span>원</div>
		<input type="hidden" value="" name="cost" id="cost"/>
		<button>카카오페이로 결제하기</button>
	</form>

	</div>
<script type="text/javascript">

$(document).ready(function cost(){	//총액 계산 함수
	const resultElement = document.getElementById('cost');
	resultElement.innerText = totalcost;
	$('input[id=cost]').attr('value', totalcost);
});



$("#check_module").click(function () {
	var IMP = window.IMP; // 생략가능
	IMP.init('imp74801621'); 
	// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
	// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
	IMP.request_pay({
		pg: 'kakao',
		pay_method: 'card',
		merchant_uid: 'merchant_' + new Date().getTime(),
		/* 
		 *  merchant_uid에 경우 
		 *  https://docs.iamport.kr/implementation/payment
		 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
		 */
		name: '주문명 : 빨간셔츠',
		// 결제창에서 보여질 이름
		// name: '주문명 : ${auction.a_title}',
		// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
		amount: 40000,
		// amount: ${bid.b_bid},
		// 가격 
		buyer_name: 'hyeon',
		// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
		// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
		buyer_postcode: '123-456',
		}, function (rsp) {
			console.log(rsp);
		if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '결제 금액 : ' + rsp.paid_amount;
			// success.submit();
			// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
			// 자세한 설명은 구글링으로 보시는게 좋습니다.
		} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
		}
		alert(msg);
	});
});
</script>
</body>
</html>