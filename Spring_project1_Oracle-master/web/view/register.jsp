<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- js -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://jqueryui.com/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="css_register/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=zhbez3pIdvDNQlTMaekG&amp;submodules=panorama,geocoder,drawing,visualization"></script>



<script>
$(document).ready(function(){
   
    $("#datepicker").datepicker({
         changeMonth: true,
         changeYear: true,
         dateFormat: "yy-mm-dd",
          showOtherMonths: true,
           selectOtherMonths: true,
           yearRange: "-100:+0"



       });
         
      $('input[name=id]').keyup(function(){
         
         
      });
   
   
   $('input[name=id]').keyup(function(){
      //english and number
         var id = document.querySelector('#id');
         var sid = document.querySelector('#sid');
         if(id.value.length>=6){
            //^시작. 시작은 무조건 알파벳이어야한다. 그 뒤에는 영어와 숫자로 이루어져야한다.
            //+는 박복적으로 사용할 수 있다.
            var exp = /^[a-zA-Z0-9]+/;
            if(!exp.test(id.value)){
               sid.innerHTML = '영어와 숫자입력';
               id.focus();
               return;
            }else{
               $.ajax({
                    url : 'duplicatedID.hw',
                    type: "POST",
                    data : { "id" : $("#id").val() },
                    success : function(data){
                       if(data==1){
                          sid.innerHTML = '아이디 존재';
                          return;
                       }else{
                          sid.innerHTML = '사용가능';
                          return;
                       }
                    }
                });
               
               
            }
            
         }else{
            sid.innerHTML = '6자리 이하입니다.';
            id.focus();
            return;
         }
   });
   
   $("input[name=pwd]").keyup(function(){
      //영어로 시작하고 8자리 이상   
      //숫자와 특수문자가 반드시 포함
         var pwd = document.querySelector('#pwd');
         var spwd = document.querySelector('#spwd');
         if(pwd.value.length>=8){
            //^시작. 시작은 무조건 알파벳이어야한다. 그 뒤에는 영어와 숫자로 이루어져야한다.
            //+는 박복적으로 사용할 수 있다.
            //소문자 있니? (?=.*[a-z]) ^는 NOT
            //시작이 없으므로 아무거나 들어와도 됨.
            //주의사항. 영어소문자1개이상, 대문자 1개이상, 숫자1개이상, 특수문자 1개이상.
            var exp = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9])/;
            if(!exp.test(pwd.value)){
               spwd.innerHTML = '영어소문자,영어대문자,숫자,특수문자 조합으로 입력';
               pwd.focus();
               return;
            }else{
               spwd.innerHTML = '사용가능';
               return;
            }
            
         }else{
            spwd.innerHTML = '8자리 이상입니다.';
            pwd.focus();
            return;
         }
      
   });
   
   $("input[name=phone_num]").keyup(function(){
      //000-0000-0000형식   
         var phone_num = document.querySelector('#phone_num');
         var sphone = document.querySelector('#sphone');

         var exp = /^(01[016789])-(\d{3,4})-(\d{4})$/;
;
         if(!exp.test(phone_num.value)){
            sphone.innerHTML = '011-1111-1111의 형식으로 입력하세요.';
            phone_num.focus();
            return;
         }else{
            sphone.innerHTML = '사용가능';
            return;
         }
               
   });
   
   $("#cpwd").keyup(function(){
      $("#cpwd").val()==$("#pwd").val() ? 
            $('#scpwd').html("비밀번호 동일") :
               $('#scpwd').html("비밀번호와 동일하게 입력");
   
   });
   
   // result by latlng coordinate
      function searchAddressToCoordinate(address) {
	   //address로 입력된 값으로 자료 요청
          naver.maps.Service.geocode({
              address: address
          }, function(status, response) {
              
        	  var item = response.result.items[0],
              point = new naver.maps.Point(item.point.x, item.point.y);
             $('#long').val(item.point.x);
             $('#lat').val(item.point.y);

              var list='<option value="none" selected="" disabled="">Select Address</option>';
              //response.result.total 전체 가져온 자료 갯수
              //response.result.items 가져온 object들
              for(var i=0;i<response.result.total;i++){
                 list=list+'<option >'+response.result.items[i].address+'</option>';
              }
              $('#addrlist').html(list);
          });
          
      }
   
      
   
      $('#addr').keyup(function(e) {
         searchAddressToCoordinate($('#addr').val());
       });

});

function addrSet(){
   $('#addr').val($('#addrlist').val());
};


</script>

<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>


<!-- banner -->
   <div class="center-container">
      <div class="main">
         <h1 class="w3layouts_head">Sign up</h1>
            <div class="w3layouts_main_grid">
               <form class="w3_form_post" action="registerimpl.hw" method="POST" enctype="multipart/form-data"  >
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>아이디 </label>
                        <input type="text" id="id" name="id" placeholder="Your ID" required="">
                        <span id="sid">6자리 이상 영문자</span>
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>PASSWORD </label>
                        <input type="password" id="pwd" name="pwd" placeholder="Your password" required="">
                        <span id="spwd">영소,영대,숫자,특수문자 조합 필수</span>
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>PASSWORD </label>
                        <input type="password" id="cpwd" name="cpwd" placeholder="Confirm password" required="">
                        <span id="scpwd">비밀번호와 동일하게 입력</span>
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>NAME </label>
                        <input type="text" name="name" placeholder="Your Name" required="">
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>ADDRESS </label>
                        <input type="text" id="addr" name="addr" placeholder="Your Address" required="">
                        <input type="hidden" id="lat" name="user_lat" required=""> 
						<input type="hidden" id="long" name="user_long" required=""> 
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <select id="addrlist" name="addrList" style="width:72.5%;" onchange="addrSet()">
                        </select>
                     </span>
                  </div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>Phone Number </label>
                        <input type="text" id="phone_num" name="phone_num" placeholder="Phone Number" required="">
                        <span id="sphone">000-0000-00000형식</span>
                        </span>
                  </div>

                  <div class="agileits_w3layouts_main_grid w3ls_main_grid">
                     <span class="agileinfo_grid">
                        <label>Birth </label>
                        <div class="agileits_w3layouts_main_gridl">
                           <input class="date" placeholder="yyyy-mm-dd" id="datepicker" name="birth" type="text" value="yyyy-mm-dd" required="">
                        </div>
                     </span>
                  </div>
                  <div class="clear"></div>
                  <div class="w3_agileits_main_grid w3l_main_grid">
                     <span class="agileits_grid">
                        <label>Profile </label>
                        <input type="file" name="img" placeholder="Your Image" required="">
                     </span>
                  </div>
               <div class="content-w3ls">
                  <div class="form-w3ls">
                     <div class="content-wthree2">
                        <div class="grid-w3layouts1">
                           <div class="w3-agile1">
                              <label>Profile disclosure status</label>
                              <ul>
                                 <li>
                                    <input type="radio" id="a-option" name="pro_yn" value="y">
                                    <label for="a-option">public </label>
                                    <div class="check"></div>
                                 </li>
                                 <li>
                                    <input type="radio" id="b-option" name="pro_yn" value="n">
                                    <label for="b-option">private</label>
                                    <div class="check"><div class="inside"></div></div>
                                 </li>
                              </ul>
                           </div>   
                        </div>
                        <div class="clear"></div>
                     </div>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="w3_main_grid">
                  <div class="w3_main_grid_right">
                     <input type="submit" value="Sign up">
                  </div>
               </div>
            </form>
         </div>
      
         <div class="w3layouts_copy_right">
            <div class="container">
            </div>
         </div>
      </div>
   </div>