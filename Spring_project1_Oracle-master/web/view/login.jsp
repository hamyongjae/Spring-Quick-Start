<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Event Registration Form Widget Flat Responsive Widget
	Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Event Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
		
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style>
#loginbutton{
	outline:none;
	padding:10px 0;
	width:22%;
	text-transform:uppercase;
	font-size:14px;
	color:#fff;
	background:#cd31c1;
	border:none;
	cursor:pointer;
}
</style>

<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="css_register/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<script>
/* $(document).ready(function(){
	$('input[name=id]').keyup(function(){
		$.ajax({
	        url : "/duplicatedID.hw",
	        type: "POST",
	        data : { "id" : $("#id").val() },
	        success : function(responseData){
	        	alert(data);
                if(!data){
                    alert("존재하지 않는 ID입니다");
                    return false;
                }
	        }
	    });
		
	});
}); */


</script>
</head>
<body>
	<!-- banner -->
	<div class="center-container">
		<div class="main">
			<h1 class="w3layouts_head">Login</h1>
			<div class="w3layouts_main_grid">
				<form action="loginimpl.hw" method="post" class="w3_form_post">
					<div class="w3_agileits_main_grid w3l_main_grid">
						<c:choose>
							<c:when test="${loginstate == 'fail' }">
								<h3 style="color:white">아이디 혹은 비밀번호를 확인하세요</h3>
							</c:when>
							
						</c:choose>
						<span class="agileits_grid"> <label>ID </label> 
						<input type="text" id="id" name="id" placeholder="Your ID" required="">
						</span>
					</div>

					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid"> <label>PASSWORD </label> 
						<input type="password" name="pwd" placeholder="Your password" required="">
						</span>
					</div>
					<div class="w3_main_grid">
						<div class="w3_main_grid_right">
							<input type="submit" value="Login"> 
							<button type="button" id="loginbutton" onclick="location.href='register.hw'">Register</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>