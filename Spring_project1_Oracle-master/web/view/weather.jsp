<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	
	function display(data){
		var w = $(data).find('yweather\\:condition,condition');
		var code = w.attr('code');
		var data = w.attr('data');
		var temp = w.attr('temp');
		var text = w.attr('text');
		var result = '<h3>' + data + '' + temp +' ' + text +'</h3>';
		$('#w').html(result);
		
		
	};
	
	setInterval(function(){
		$.ajax({
			url:'weatherimpl.hw',
			success:function(data){
				display(data);
			},
			error:function(){
				alert('error');
				
			}
			
		});
	},5000)
	
	
	
	
});
</script>
<h1>Weather Page</h1>
<div id="w">

</div>
