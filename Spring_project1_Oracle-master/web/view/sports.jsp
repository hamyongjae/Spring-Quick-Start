<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Fresh Food a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css2/style.css">

<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">

<!-- Default-JavaScript-File -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //Default-JavaScript-File -->



<link rel="stylesheet" href="css/jquery-ui.css" type="text/css"
	media="all">
<!-- date-picker css-->

<!-- gallery-->
<link href="css/lsb.css" rel="stylesheet" type="text/css">
<!-- //gallery -->

<!-- banner text effect css files -->
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style3.css" />
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<!-- banner text effect css files -->

<!-- logo text effect css files -->
<link rel="stylesheet" type="text/css" href="css/demo1.css" />
<link rel="stylesheet" type="text/css" href="css/linkstyles.css" />
<!-- //logo text effect css files -->

<!-- default css files -->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- default css files -->

<!--web font-->
<link
	href="//fonts.googleapis.com/css?family=Pacifico&amp;subset=latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext"
	rel="stylesheet">
<!--//web font-->

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700"
	rel="stylesheet">

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script type="text/javascript"
   src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=zhbez3pIdvDNQlTMaekG&amp;submodules=panorama,geocoder,drawing,visualization"></script>
<script>
<!-- Date-Picker-JavaScript -->
$(document).ready(function(){
   $("#datepicker,#datepicker1,#datepicker2,#datepicker3,#datepicker4").datepicker(
   {
      dateFormat: "yy-mm-dd"
   });

   <!-- //Date-Picker-JavaScript -->
   
   //result by latlng coordinate
   function searchAddressToCoordinate(address) {
       naver.maps.Service.geocode({
           address: address
       }, function(status, response) {
           
          var item = response.result.items[0],
            point = new naver.maps.Point(item.point.x, item.point.y);
           $('#long').val(item.point.x);
           $('#lat').val(item.point.y);
   
           var list='<option value="none" selected="" disabled="">Select Address</option>';
           for(var i=0;i<response.result.total;i++){
              list=list+'<option >'+response.result.items[i].address+'</option>';
           }
           $('#addrlist').html(list);
       });
       
   };
   
   
   
   $('#addr').keyup(function(e) {
      searchAddressToCoordinate($('#addr').val());
    });
   
   
   
  
});
function addrSet(){
	   $('#addr').val($('#addrlist').val());
};
</script>



</head>
<!-- Body -->
<body>
	<header>
		<!-- banner -->
		<div class="banner_sports jarallax">
			<div class="agileinfo-dot">
				<div class="header">
					<div class="container-fluid">
						<div class="header-left">
							<div class="w3layouts-logo grid__item">
								<h1>
									<a class="link link--ilin" href="#"> <span>NAHONJA
											MOTSANDA</span></a>
								</h1>
							</div>
						</div>
						<div class="top-nav">
							<nav class="navbar navbar-default">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li><a class="active" href="index.html">Home</a></li>
										<li><a href="travel.hw" class="active">Travel</a></li>
										<li><a href="dining.hw" class="active">Dining</a></li>
										<li><a href="sports.hw" class="active">Sports</a></li>
										<li><a href="culture.hw" class="active">Culture & Art</a></li>
										<li><a href="review.hw" class="active">Review</a></li>

									</ul>

									<div class="clearfix"></div>
								</div>
							</nav>
							<div class="agileinfo-social-grids">
								<ul>
									<c:choose>
										<c:when test="${loginid == null }">
											<li><a href="register.hw" class="active">Sign up</a></li>
											<li><a href="login.hw" class="active">Login</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="#" class="active" style="font-weight: bold">${loginid }</a>
											<li><a href="wishlist.hw" class="active">Wishlist</a></li>
											<li><a href="logout.hw" class="active">Logout</a>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>

						</div>
					</div>

				</div>

				<div class="agileits-banner-info">
					<h3>welcome to</h3>
					<h2 class="rw-sentence">
						<span>Food tastes better, travel with your </span>
						<div class="rw-words rw-words-1">
							<span>Friends</span> <span>happiness</span> <span>Love</span> <span>Gratefulness</span>
							<span>happiness</span>
						</div>
					</h2>
					<c:choose>
						<c:when test="${loginid != null }">
							<a href="#" data-toggle="modal" data-target="#myModal2">Register</a>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
		</div>
		<!-- //banner -->
	</header>


<!-- popup for sign up form -->

	<div class="modal video-modal fade" id="myModal2" tabindex="-1"
		role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div id="small-dialog2" class="mfp-hide book-form">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3>Register Activity with your friend</h3>
					<form action="activityimpl.hw" method="POST"
						enctype="multipart/form-data">
						<input type="hidden" name="cat_no" value="2"> <input
							type="hidden" name="id" value="${loginid }"> <input
							type="text" name="title" placeholder="Activity Name" required="" />
						<input type="text" id="addr" name="addr" placeholder="Your Address" required=""> 
							<input type="hidden" id="lat" name="addr_lat" required=""> 
							<input type="hidden" id="long" name="addr_long" required=""> 
							<select id="addrlist" name="addrList" onchange="addrSet()"></select>
						<div class="select-block1">
							<select name="quantity" required="">
								<option value="none" selected="" disabled="">Number Of
									Guests</option>
								<option value="1">1 Guest</option>
								<option value="2">2 Guests</option>
								<option value="3">3 Guests</option>
								<option value="4">4 Guests</option>
								<option value="5">5 Guests</option>
								<option value="6">More Than 5</option>
							</select>
						</div>

						<div class="select-block1">
							<select name="gender" required="">
								<option value="none" selected="" disabled="">Gender</option>
								<option value="2">Man</option>
								<option value="1">Woman</option>
								<option value="3">Both</option>
							</select>
						</div>

						<input type="tel" name="act_phone" placeholder="Mobile Number"
							required="" /> <input class="date" type="text" id="datepicker1"
							name="st_date" placeholder="Date Of Departure"
							title="Please enter your Arrival Date " required="" /> <input
							class="date" type="text" id="datepicker2" name="end_date"
							placeholder="Date Of Arrival"
							title="Please enter your Arrival Date " required="" /> <input
							type="file" name="act_img1" placeholder="Your Image" required="">
						<input type="file" name="act_img2" placeholder="Your Image"
							required=""> <input type="file" name="act_img3"
							placeholder="Your Image" required=""> <input type="file"
							name="act_img4" placeholder="Your Image" required="">



						<textarea name="detail" placeholder="Detail"></textarea>
						<input type="submit" value="Register">
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- //popup for sign up form -->

	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">fresh food</h4>
					<h5>1 april 2017</h5>
				</div>
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/main_travel.jpg" alt="" />
						<p>Morbi eget mollis erat, sit amet feugiat nulla. In hac
							habitasse platea dictumst. Sed ac fermentum eros. Pellentesque
							tincidunt nisi sit amet dui lobortis, pulvinar pellentesque dui
							tempor. Sed iaculis, nisl a eleifend porttitor, diam mauris
							gravida arcu, suscipit ullamcorper nulla diam vitae lorem..</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="colorlib-reservation">
		<div class="container_temp">
			<div class="row">
				<div class="col-md-12 search-wrap">
					<form action="sports_search.hw" method="POST" class="colorlib-form">
						<div class="row">

							<div class="col-md-2">
								<div class="form-group">
									<label for="adults"> Keyword </label>
									<div class="form-field">
										<input type="hidden" name="cat_no" value="2">
										<input type="text" name="keyword" class="form-control">
										<input type="hidden" name="id" value="${loginid}" class="form-control">

									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="date">Check-in:</label>
									<div class="form-field">
										<i class="icon icon-calendar2"></i> 
										<input type="text" id="datepicker3" name="st_date_search" class="form-control date" placeholder="Check-in date">
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="date">Check-out:</label>
									<div class="form-field">
										<i class="icon icon-calendar2"></i> 
										<input type="text" id="datepicker4" name="end_date_search" class="form-control date" placeholder="Check-out date">
									</div>
								</div>
							</div>

							<div class="col-md-2">
								<input type="submit" name="submit" id="submit" value="Search"
									class="btn btn-primary btn-block">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



	<div id="colorlib-rooms" class="colorlib-light-grey">
		<div class="container">
			<div class="row">
				
			<c:forEach var="a" items="${activitylist }">
				<div class="col-md-4 room-wrap animate-box">
					<a href="img/activity/${a.act_img1 }" class="room image-popup-link"
						style="background-image: url(img/activity/${a.act_img1 });"></a>
					<div class="desc text-center">
						<span class="rate-star"><i class="icon-star-full full"></i><i
							class="icon-star-full full"></i><i class="icon-star-full full"></i><i
							class="icon-star-full"></i><i class="icon-star-full"></i></span>
						<h2>
							<a href="rooms-suites.html">${a.title }</a><br><br>
						</h2>
						<p class="price">

								<!-- <span class="price-room">07-23 ~ 07-25</span> -->
							<span class="currency"> ${a.st_date } ~ ${a.end_date } 
							</span><br> <span class="per">인원 : &nbsp;${a.quantity } </span>
						</p>
						<ul>
							
							<p>
							<li>주소 : &nbsp;${a.addr }</li>
							<li>전화번호 : &nbsp;${a.act_phone }</li>
							<li>상세정보 : &nbsp;${a.detail }</li>
							<li><i class="icon-check"></i> 상태 : ${a.state }</li>
						</ul>
						<p>
							<form action="wishlistadd.hw" method="post">
								<input type="hidden" id="wishlist_act_no" name="wishlist_act_no" value="${a.act_no}">
		                		<input type="hidden" id="wishlist_id" name="wishlist_id" value="${loginid }">
								<input id="addwishlist"type="submit" class="btn btn-primary" value="Wish List">
							</form>
						</p>
					</div>
				</div>
			</c:forEach>

			</div>
		</div>
	</div>





	<div class="footer">
		<div class="col-md-6 footer-left">
			<h3>NAHONJA MOTSANDA</h3>
			<p>Morbi eget mollis erat, sit amet feugiat nulla. In hac
				habitasse platea dictumst. Sed ac fermentum eros.Pellentesque
				tincidunt nisi sit amet dui lobortis.Pulvinar pellentesque dui
				tempor</p>
			<p>Sed iaculis, nisl a eleifend porttitor, diam mauris gravida
				arcu, suscipit ullamcorper nulla diam vitae lorem..</p>
		</div>
		<div class="col-md-6 footer-right">
			<section class="subscribe" id="subscribe">
				<h3>Newsletter</h3>
				<form action="#" method="post" class="newsletter">
					<input class="email" type="email" placeholder="Your email..."
						required=""> <input type="submit" class="submit" value="">
				</form>
			</section>
			<h4>Follow us</h4>
			<div class="wthree-icon">
				<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
					href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
					href="#" class="google"><i class="fa fa-google-plus"></i></a> <a
					href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //footer -->

	<!-- copyright -->
	<div class="copyright-agile">
		<p>
			&copy; 2017 Fresh Food. All rights reserved | Design by <a
				href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->

	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
	
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
	
		});
	</script>
	<!-- //here ends scrolling icon -->


	<!-- Date-Picker-JavaScript -->
	<script src="js/jquery-ui.js"></script>

	<!-- //Date-Picker-JavaScript -->

	<!-- banner text effect js file -->
	<script src="js/modernizr.custom.72111.js"></script>
	<!-- banner text effect js file -->
	<!-- Main -->
	<script src="js/main.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>



</body>
<!-- //Body -->
</html>