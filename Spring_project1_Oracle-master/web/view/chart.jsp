<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
		#main_center{
		width:600px;
		height:400px;
		margin:0 auto;
		background:white;
		text-align: center;
	}
	#container {
    	height: 400px; 
	}
</style>
<script>
$(document).ready(function(){
	// Set up the chart
	
	function drawChart(mydata){
		var chart = new Highcharts.Chart({
			  chart: {
			    renderTo: 'container',
			    type: 'column',
			    options3d: {
			      enabled: true,
			      alpha: 15,
			      beta: 15,
			      depth: 50,
			      viewDistance: 25
			    }
			  },
			  title: {
			    text: 'Chart rotation demo'
			  },
			  subtitle: {
			    text: 'Test options by dragging the sliders below'
			  },
			  plotOptions: {
			    column: {
			      depth: 25
			    }
			  },
			  series: mydata
			});
		
	}; // end drawChart
	
	//var data = [{data:[10,40,30,50,60]}];
	$.ajax({
		url:'chartimpl.hw',
		success:function(data){
			drawChart(data);
		},
		error:function(){
			alert('error');
		}
	});
	
	
	
	
});

</script>

<h1>Chart Page</h1>

<div id="main_center">
	<h1>Chart</h1>
	<div id="container"></div>
</div>