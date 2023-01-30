<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="../../dist/Chart.bundle.js"></script>
<script src="../utils.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<style>
  canvas {
    -moz-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
  }
</style>
</head>
<body>
<%@ include file="top.jsp" %>

<div style="width: 75%">
  <canvas id="canvas"></canvas>
</div>
<script>
$(document).ready(function(){ 
	getGraph();
});

function getGraph(){
	let timeList = [];
  	let visitorMen = [];
  	let visitorWom = [];
  	let visitorAll = [];
  	
function(data){
	for (let i = 0; i<data.length;i++){    				  
		timeList.push(data[i].pos_time);    				  
		posList.push(data[i].pos_count);    				  
		  }

  var color = Chart.helpers.color;
  var barChartData = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [{
      type: 'bar',
      label: '여성 방문자 수',
      backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
      borderColor: window.chartColors.red,
      data: []
    }, {
      type: 'line',
      label: '전체 방문자 수',
      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
      borderColor: window.chartColors.blue,
      data: []
    }, {
      type: 'bar',
      label: '남성 방문자 수',
      backgroundColor: color(window.chartColors.green).alpha(0.2).rgbString(),
      borderColor: window.chartColors.green,
      data: []
    }]
  };
 
  // Define a plugin to provide data labels
  Chart.plugins.register({
    afterDatasetsDraw: function(chart) {
      var ctx = chart.ctx;
 
      chart.data.datasets.forEach(function(dataset, i) {
        var meta = chart.getDatasetMeta(i);
        if (!meta.hidden) {
          meta.data.forEach(function(element, index) {
            // Draw the text in black, with the specified font
            ctx.fillStyle = 'rgb(0, 0, 0)';
 
            var fontSize = 16;
            var fontStyle = 'normal';
            var fontFamily = 'Helvetica Neue';
            ctx.font = Chart.helpers.fontString(fontSize, fontStyle, fontFamily);
 
            // Just naively convert to string for now
            var dataString = dataset.data[index].toString();
 
            // Make sure alignment settings are correct
            ctx.textAlign = 'center';
            ctx.textBaseline = 'middle';
 
            var padding = 5;
            var position = element.tooltipPosition();
            ctx.fillText(dataString, position.x, position.y - (fontSize / 2) - padding);
          });
        }
      });
    }
  });
 
  window.onload = function() {
    var ctx = document.getElementById('canvas').getContext('2d');
    window.myBar = new Chart(ctx, {
      type: 'bar',
      data: barChartData,
      options: {
        responsive: true,
        title: {
          display: true,
          text: 'Chart.js Combo Bar Line Chart'
        },
      }
    });
  };
 
</script>


<script>
fetch("http://127.0.0.1/admin/yangdoll")
  .then((response) => response.json())
  .then((data) => {
	  console.log(data);
	  console.log('data'+ '를 이용해서 원하는 값을 그래프 함수에 넘겨줘서 그림을 그리게 함...');
  });
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>