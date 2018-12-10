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
<script>
$(document).ready(function(){
   
   $("#wish_submit").click(function(){ //이미지의 id(searchpy)를 클릭했을 때 펑션 실행
      var id = $("#wishlist_id").val(); //input태그(id="neilong")에 입력한 값을 neilong에 담아줌
      
      var f = document.createElement("form"); // form 엘리멘트 생성 
      f.setAttribute("method","post"); // method 속성을 post로 설정
      f.setAttribute("action","wishlist.hw"); // submit했을 때 무슨 동작을 할 것인지 설정
      document.body.appendChild(f); // 현재 페이지에 form 엘리멘트 추가 

      var i = document.createElement("input"); // input 엘리멘트 생성 
      i.setAttribute("type","hidden"); // type 속성을 hidden으로 설정
      i.setAttribute("name","wishlist_id"); // name 속성을 'm_nickname'으로 설정 
      i.setAttribute("value",id); // value 속성을 neilong에 담겨있는 값으로 설정 
      f.appendChild(i); // form 엘리멘트에 input 엘리멘트 추가 

      f.submit(); // form 태그 서브밋 실행
   });
});
</script>
<!-- //scrolling script -->

</head>
<!-- Body -->
<body>
   <header>
      <!-- banner -->
      <div class="banner_main jarallax">
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
                                 <li>
                                 <input id="wishlist_id" name ="wishlist_id" type="hidden" class=""value=${loginid}>
                                 <a href="#" id="wish_submit" class="active">Wishlist</a></li>
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
            </div>
         </div>
      </div>
      </div>
      <!-- //banner -->
   </header>



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

   <div id="colorlib-rooms" class="colorlib-light-grey">
      <div class="container">
         <div class="row">
            <div
               class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
               <span><i class="icon-star-full"></i><i
                  class="icon-star-full"></i><i class="icon-star-full"></i><i
                  class="icon-star-full"></i><i class="icon-star-full"></i></span>
               <h2>Review & Recommandation</h2>
               <p>If you want to go fast, go alone, but if you want to go far,
                  go together.</p>
            </div>
         </div>
         
         <div class="row">
            <div class="col-md-12 animate-box">
               <div class="owl-carousel owl-carousel2">
                  
                  
                  <c:forEach var="a" items="${activitylist }">
                     
						<div class="item">
                           <a href="img/activity/${a.act_img1 }"
                              class="room image-popup-link"
                              style="background-image: url(img/activity/${a.act_img1 });"></a>
                           <div class="desc text-center">
                              <span class="rate-star"><i class="icon-star-full full"></i><i
                                 class="icon-star-full full"></i><i
                                 class="icon-star-full full"></i><i class="icon-star-full"></i><i
                                 class="icon-star-full"></i></span>
                              <h3>
                                 <a href="rooms-suites.html">${a.title }</a>
                              </h3>
                              <p class="price">
                                 <span class="currency"> ${a.st_date } - ${a.end_date }
                                 </span> <span class="per">${a.quantity } </span>
                              </p>
                              <ul>
                                 <li>${a.title }</li>
                                 <p>
                                 <li>${a.addr }</li>
                                 <li>${a.act_phone }</li>
                                 <li><i class="icon-check"></i> 상태 : ${a.state }</li>
                              </ul>
                              <p>
                                 <!-- <a class="btn btn-primary">Wish List!</a> -->
                                 <form action="wishlistadd.hw" method="post">
			                        <input type="hidden" id="wishlist_act_no" name="wishlist_act_no" value="${a.act_no}">
			               			 <input type="hidden" id="wishlist_id" name="wishlist_id" value="${loginid }">
                                 <input id="addwishlist" type="submit" class="btn btn-primary" value="Wish List">
                                 </form>
                              </p>
                           </div>
                        </div>
                     
                  </c:forEach>
               
               
               </div>
            </div>
            <div class="col-md-12 text-center animate-box">
               <a href="#">View all rooms <i class="icon-arrow-right3"></i></a>
            </div>
         </div>
      </div>
   </div>



   <!-- customer -->
   <div class="customer jarallax" id="customer">
      <div class="agileinfo-dot">
         <div class="container">
            <h3>Customer Says</h3>
            <div class="customer-grids">
               <ul id="flexiselDemo1">
                  <li>
                     <div class="customer-grid">
                        <p>흐린날 갔는데도 꽤나 더웠어요. 특히나 긴바지 입고 들어가야 하니 더위 피하기는 쉽지 않습니다. 그래도
                           한국에서 볼수 없는 분위기이기 때문에 꼭 가보시면 좋겠어요. 사진 찍을 수 있는 장소도 많습니다. 더우니까
                           5점주긴 힘든데 4점은 약간 아쉬워요 4.5점 정도 ㅋㅋ</p>
                        <h4>
                           David Elton <span>Daily customer</span>
                        </h4>
                     </div>
                     <div class="client-img">
                        <img src="images/t1.jpg" alt="" />
                     </div>
                  </li>
                  <li>
                     <div class="customer-grid">
                        <p>블로그나 사진에서 보던 그대로 정말 웅장하고 멋있었어요! 하지만 그만큼 전세계 사람들이 모이는 곳이라
                           사람에게 휩쓸려 걷는 자신을 발견할 수 있는 곳이기도해요. (동행을 잃지 않도록 주의가 필요해요!) 날씨가
                           더운데다가 사람도 많기 때문에 아침 일찍 또는 문 닫기 전에 가셔서 구경하시면 좋을 것 같아요.</p>
                        <h4>
                           Marvin gaye <span>Special customer</span>
                        </h4>
                     </div>
                     <div class="client-img">
                        <img src="images/t2.jpg" alt="" />
                     </div>
                  </li>
                  <li>
                     <div class="customer-grid">
                        <p>정말 덥다. 사원 안에 들어가려면 신발을 벗어야 하는데 양지는 바닥이 엄청 뜨겁다. 왕궁 군데군데
                           사진찍기 좋은 곳들이 있으니 예쁜 사진은 많이 남길 수 있다. 안내지도를 잘 살펴보면 왕궁 안에 박물관이 있는데
                           꼭 가보길 추천한다. 무엇보다 에어컨이 나온다!</p>
                        <h4>
                           Jawel Slash <span>Recent visitor</span>
                        </h4>
                     </div>
                     <div class="client-img">
                        <img src="images/t3.jpg" alt="" />
                     </div>
                  </li>
               </ul>
               <script type="text/javascript">
                  $(window).load(function() {
                     $("#flexiselDemo1").flexisel({
                        visibleItems : 3,
                        animationSpeed : 1000,
                        autoPlay : true,
                        autoPlaySpeed : 3000,
                        pauseOnHover : true,
                        enableResponsiveBreakpoints : true,
                        responsiveBreakpoints : {
                           portrait : {
                              changePoint : 480,
                              visibleItems : 1
                           },
                           landscape : {
                              changePoint : 640,
                              visibleItems : 3
                           },
                           tablet : {
                              changePoint : 768,
                              visibleItems : 3
                           }
                        }
                     });
               
                  });
               </script>
               <script type="text/javascript" src="js/jquery.flexisel.js"></script>
            </div>
         </div>
      </div>
   </div>
   <!-- //customer -->

   <!-- contact form -->
   <!-- //contact form -->

   <!-- map -->
   <!-- //map -->
   <!-- footer -->
   <div class="footer">
      <div class="col-md-6 footer-left">
         <h3>Fresh Food</h3>
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
   <script>
   $(function() {
      $("#datepicker,#datepicker1,#datepicker2,#datepicker3,#datepicker4").datepicker({
         dateFormat: "yy-mm-dd"
      });
   });
   </script>
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