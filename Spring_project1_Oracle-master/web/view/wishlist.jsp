<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Store Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<link
   href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700"
   rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css_store/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css_store/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css_store/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css_store/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet" href="css_store/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet" href="css_store/owl.carousel.min.css">
<link rel="stylesheet" href="css_store/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet" href="css_store/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet" href="fonts_store/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css_store/style.css">

<!-- Modernizr JS -->
<script src="js_store/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
   <script src="js/respond.min.js"></script>
   <![endif]-->

</head>




<body>

   <div class="colorlib-loader"></div>

   <div id="page">
      <nav class="colorlib-nav" role="navigation">
         <div class="top-menu">
            <div class="container">
               <div class="row">
                  <div class="col-xs-2">
                     <div id="colorlib-logo">
                        <a href="index.html">NAHONJA MOTSANDA</a>
                     </div>
                  </div>
                  <div class="col-xs-10 text-right menu-1">
                     <ul>
                        <li><a href="travel.hw">Travel</a></li>
                        <li><a href="dining.hw">Dining</a></li>
                        <li><a href="sports.hw">Spots</a></li>
                        <li><a href="culture.hw">Culture</a></li>

                     </ul>
                  </div>
                  <%--    <div>
                     <ul>
                        <c:choose>
                           <c:when test="${loginid == null }">
                              <li><a href="register.hw">Sign up</a></li>
                              <li><a href="login.hw">Login</a></li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="#">${loginid }님 환영합니다</a>
                              <li><a href="wishlist.hw">Wishlist</a></li>
                              <li><a href="logout.hw">Logout</a>
                           </c:otherwise>
                        </c:choose>
                     </ul>
                  </div> --%>
               </div>
            </div>
         </div>
      </nav>
      <!-- <aside id="colorlib-hero" class="breadcrumbs">
         <div class="flexslider">
            <ul class="slides">
               <li style="background-image: url(images/cover-img-1.jpg);">
                  <div class="overlay"></div>
                  <div class="container-fluid">
                     <div class="row">
                        <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                           <div class="slider-text-inner text-center">
                              <h1>Wishlist</h1>
                              <h2 class="bread"><span><a href="index.html">Home</a></span> <span>Wishlist</span></h2>
                           </div>
                        </div>
                     </div>
                  </div>
               </li>
              </ul>
           </div> 
      </aside>-->

      <div class="colorlib-shop">
         <div class="container">
            <div class="row row-pb-md">
               <div class="col-md-10 col-md-offset-1">
                  <div class="product-name">
                     <div class="one-forth text-center">
                        <span>Activity Name</span>
                     </div>
                     <div class="one-eight text-center">
                        <span>ID</span>
                     </div>
                     <div class="one-eight text-center">
                        <span>Date</span>
                     </div>

                     <div class="one-eight text-center">
                        <span>Number Of People</span>
                     </div>

                     <div class="one-eight text-center">
                        <span>Gender</span>
                     </div>
                     <div class="one-eight text-center">
                        <span>Remove</span>
                     </div>
                                
                  </div>

                  <c:forEach var="i" items="${wishlist }">
                  
                     <div class="product-cart">
                        <div class="one-forth">
                           <div class="product-img"
                              style="background-image: url(img/activity/${i.act_img1 });"></div>
                           <div class="display-tc">
                              <h3>${i.title }</h3>
                           </div>
                        </div>
                        <div class="one-eight text-center">
                           <div class="display-tc">
                              <span class="price">${i.id}</span>
                           </div>
                        </div>
                        <div class="one-eight text-center">
                           <div class="display-tc">
                              <span class="price">${i.st_date } - ${i.end_date }</span>
                           </div>
                        </div>

                        <div class="one-eight text-center">
                           <div class="display-tc">
                              <input type="text" id="quantity" name="quantity"
                                 class="form-control input-number text-center" value="1"
                                 min="1" max="100">
                           </div>
                        </div>
                        <div class="one-eight text-center">
                           <div class="display-tc">
                              <span class="price">${i.gen_no }</span>
                           </div>
                        </div>
                        <div class="one-eight text-center">
                           <div class="display-tc">
                           
	                           <form action="wishlistremove.hw" type="POST">
	                          	 <input id="wishdelete_act_no" name ="wishdelete_act_no" type="hidden" class=""value="${i.act_no}">
	                          	 <input  type="submit" value="X">
                              </form>
                           </div>
                        </div>
                     </div>
                  </c:forEach>


               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="gototop js-top">
      <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
   </div>

   <!-- jQuery -->
   <script src="js_store/jquery.min.js"></script>
   <!-- jQuery Easing -->
   <script src="js_store/jquery.easing.1.3.js"></script>
   <!-- Bootstrap -->
   <script src="js_store/bootstrap.min.js"></script>
   <!-- Waypoints -->
   <script src="js_store/jquery.waypoints.min.js"></script>
   <!-- Flexslider -->
   <script src="js_store/jquery.flexslider-min.js"></script>
   <!-- Owl carousel -->
   <script src="js_store/owl.carousel.min.js"></script>
   <!-- Magnific Popup -->
   <script src="js_store/jquery.magnific-popup.min.js"></script>
   <script src="js_store/magnific-popup-options.js"></script>
   <!-- Date Picker -->
   <script src="js_store/bootstrap-datepicker.js"></script>
   <!-- Stellar Parallax -->
   <script src="js_store/jquery.stellar.min.js"></script>
   <!-- Main -->
   <script src="js_store/main.js"></script>
   </script>

</body>
</html>
