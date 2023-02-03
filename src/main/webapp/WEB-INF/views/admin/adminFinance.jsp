<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재무제표 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>재무제표 페이지</h1>
	<div style="width: 600px">

		<div>
			<h3>방문자 수 그래프</h3>
			<canvas id="canvas" height="450px" width="600px"></canvas>
			<h3>판매율 그래프</h3>
			<canvas id="myChart" height="450px" width="600px"></canvas>
			<h3>주문 수 그래프</h3>
			<canvas id="myOrderChart" height="450px" width="600px"></canvas>
			<h3>총 수익 그래프</h3>
			<canvas id="myRevChart" height="450px" width="600px"></canvas>
			<h3>결제종류 그래프</h3>
			<canvas id="myPayChart" height="450px" width="600px"></canvas>

		</div>

	</div>


	<script>
	
	
	/* 방문자수 그래프 */
		var chartLabels = [];
		var chartDataMen = [];		
		var chartDataWomen = [];		
		var chartDataTotal = [];

		$.getJSON("/admin/adminVisitorProc", function(data) {
			$.each(data, function(inx, obj) {				
				chartLabels.push(obj.visitDate);
				chartDataMen.push(obj.visitMen);				
				chartDataWomen.push(obj.visitWom);
				chartDataTotal.push(obj.total);					
			});
			createChart();
			console.log("create Chart")
		});

		var lineChartData = {
			labels : chartLabels,
			datasets : [
			{
				label : "남자 방문자 수",
				backgroundColor : "rgba( 255, 255, 255, 0 )",			
				borderColor : "blue",			
				borderWidth: 1,			
				data : chartDataMen
			},{
				label : "여자 방문자 수",
				backgroundColor : "rgba( 255, 255, 255, 0 )",				
				borderColor : "red",				
				borderWidth: 1,				
				data : chartDataWomen				
			},{
				label : "전체 방문자 수",
				backgroundColor : "rgba( 255, 255, 255, 0 )",				
				borderColor : "green",				
				borderWidth: 1,				
				data : chartDataTotal
			}
			]	
		}

		function createChart() {
			var ctx = document.getElementById("canvas").getContext("2d");
			LineChartDemo = Chart.Line(ctx, {
				data : lineChartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			})
		}
		
		
		
		
		
		/* 판매율 그래프 */
		var chartData = [];		


		$.getJSON("/admin/adminOrderStatProc", function(data) {
			$.each(data, function(inx, obj) {
				chartData.push(obj.countData);						
			});
			createMyChart();
			console.log("create MyChart")
		}); 
		
		
		var myChartData = {
				labels: ['비회원','남자','여자'],
				datasets : [
				{
					label : "남자 판매율",
					backgroundColor : ["grey", "skyblue","pink"],			
					borderColor : ["grey", "skyblue","pink"],			
					borderWidth: 1,			
					data : chartData
			}
			]   
		}
		
		function createMyChart(){
			var context = document.getElementById('myChart').getContext('2d');
			
			var myChart = new Chart(context, {
				type: "pie",
				data: myChartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			})
		}

		
		
		
		/* 주문수 그래프 */
		var chartOrderData = [];		
		var chartOrderLabel = [];

		$.getJSON("/admin/adminOrderDateProc", function(data) {
			$.each(data, function(inx, obj) {
				chartOrderLabel.push(obj.ordDate)
				chartOrderData.push(obj.sangCnt);						
			});
			createOrderChart();
			console.log("create OrderChart")
		}); 
		
		
		var OrderChartData = {
				labels: chartOrderLabel,
				datasets : [
				{
					label : "주문 수",
					backgroundColor : "rgba( 255, 255, 255, 0 )",			
					borderColor : "black",			
					borderWidth: 1,			
					data : chartOrderData
			}
			]   
		}
		
		function createOrderChart(){
			var aaa = document.getElementById('myOrderChart').getContext('2d');
			
			var orderChart = new Chart(aaa, {
				type: "line",
				data: OrderChartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			})
		}
		
		
		
		

		/* 결제종류 그래프 */
		var chartPayData = [];		

		$.getJSON("/admin/adminPayProc", function(data) {
			$.each(data, function(inx, obj) {
				chartPayData.push(obj.count);						
			});
			createPayChart();
			console.log("create PayChart")
		}); 
		
		
		var payChartData = {
				labels: ['카드결제','무통장입금','간편결제'],
				datasets : [
				{
					label : "결제 종류 그래프",
					backgroundColor : ["yellow", "orange","pink"],			
					borderColor : ["yellow", "orange","pink"],			
					borderWidth: 1,			
					data : chartPayData
			}
			]   
		}
		
		function createPayChart(){
			var bbb = document.getElementById('myPayChart').getContext('2d');
			
			var myChart = new Chart(bbb, {
				type: "pie",
				data: payChartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			})
		}
		
		
		
		/* 총 수익 그래프 */
		var chartRevData = [];		
		var chartRevLabel = [];

		$.getJSON("/admin/adminRevenueProc", function(data) {
			$.each(data, function(inx, obj) {
				chartRevLabel.push(obj.payDate)
				chartRevData.push(obj.payment);						
			});
			createRevChart();
			console.log("create RevChart")
		}); 
		
		
		var RevChartData = {
				labels: chartRevLabel,
				datasets : [
				{
					label : "총 수익",
					backgroundColor : "rgba( 255, 255, 255, 0 )",			
					borderColor : "black",			
					borderWidth: 1,			
					data : chartRevData
			}
			]   
		}
		
		function createRevChart(){
			var ccc = document.getElementById('myRevChart').getContext('2d');
			
			var revChart = new Chart(ccc, {
				type: "line",
				data: RevChartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			})
		}
		

</script>
<%@ include file="bottom.jsp" %>
</body>
</html>