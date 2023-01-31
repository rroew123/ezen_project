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
	<div style="width: 60%">

		<div>

			<canvas id="canvas" height="450" width="600"></canvas>

		</div>

	</div>


	<script>
	
	
	/* 방문자수 그래프 */
		var chartLabels = [];

		var chartDataMen = [];
		
		var chartDataWomen = [];
		
		var chartDataTotal = [];

		$.getJSON("{path}/admin/adminVisitorProc", function(data) {

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
		
		
</script>

<%@ include file="bottom.jsp" %>
</body>
</html>