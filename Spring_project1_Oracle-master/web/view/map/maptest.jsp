<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Map Test</h1>


<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">


<style type="text/css">
.search { position:absolute;z-index:1000;top:20px;left:20px; }
.search #address { width:150px;height:20px;line-height:20px;border:solid 1px #555;padding:5px;font-size:12px;box-sizing:content-box; }
.search #submit { height:30px;line-height:30px;padding:0 10px;font-size:12px;border:solid 1px #555;border-radius:3px;cursor:pointer;box-sizing:content-box; }
.fixbutton { position:absolute;z-index:1000;bottom:20px;right:20px; }
.addsearch{background-color:green;}
#addList{margin:0;padding:0;}
#addList:hover{cursor:pointer;background-color:gray;}
#choose{background-color:green;}
</style>

<title>간단한 지도 표시하기</title>


위도 설정<input id="lat" type="text" readonly>
경도 설정<input id="lng" type="text" readonly>
테스트주소<input id="test" readonly ></input>
<body>
<div id="map" style="width:100%;height:400px; margin:0 auto;">
	<div class="search" style="">
	    <input id="address" type="text" placeholder="검색할 주소" value="불정로 6">
	    <input id="submit" type="button" value="주소 검색">
	</div>
	<div class="fixbutton">
		<button id="fix_pin">좌표고정하기</button>
		<button id="reset_pin">좌표고정리셋</button>
	
	</div>
	
</div>
<select id="auto" onchange="addSet()" style=" border:1px solid gray; border-radius:5px; padding:5px 8px;"></select>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=zhbez3pIdvDNQlTMaekG&amp;submodules=panorama,geocoder,drawing,visualization"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>






<script>
//fix location
	var fix=1;
	
	//DEFALT AND OPTION FOR MAP
	var mapOptions = {
	    center: new naver.maps.LatLng(37.3595704, 127.105399),
	    zoom: 10,
	    mapTypeControl: true,
    mapTypeControlOptions: {
        style: naver.maps.MapTypeControlStyle.BUTTON,
        position: naver.maps.Position.TOP_RIGHT
    },
    zoomControl: true,
    zoomControlOptions: {
        style: naver.maps.ZoomControlStyle.SMALL,
        position: naver.maps.Position.TOP_RIGHT
    }
    
	};
	
	var map = new naver.maps.Map('map', mapOptions);
	var infoWindow = new naver.maps.InfoWindow({
	    anchorSkew: true
	});
	
	
	
	
	// search by tm128 coordinate
	function searchCoordinateToAddress(latlng) {
	    var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

	    infoWindow.close();

	    naver.maps.Service.reverseGeocode({
	        location: tm128,
	        coordType: naver.maps.Service.CoordType.TM128
	    }, function(status, response) {
	        if (status === naver.maps.Service.Status.ERROR) {
	            return alert('Something Wrong!');
	        }

	        var items = response.result.items,
	            htmlAddresses = [];

	        for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
	            item = items[i];
	            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]';

	            htmlAddresses.push((i+1) +'. '+ addrType +' '+ item.address);
	        }
	        $('#lat').val(latlng.toString().substr(latlng.toString().search("lat:")+4, latlng.toString().search(",lng:")-latlng.toString().search("lat:")-4));
	        $('#lng').val(latlng.toString().substr(latlng.toString().search(",lng:")+5, 10));
	        infoWindow.setContent([
	                '<div style="padding:10px;min-width:200px;line-height:150%;">',
	                '<h4 style="margin-top:5px;">검색 좌표</h4><br />',
	                htmlAddresses.join('<br />'),
	                '</div>'
	            ].join('\n'));

	        infoWindow.open(map, latlng);
	    });
	}

	// result by latlng coordinate
	function searchAddressToCoordinate(address) {
	    naver.maps.Service.geocode({
	        address: address
	    }, function(status, response) {
	        if (status === naver.maps.Service.Status.ERROR) {
	            return alert('Something Wrong!');
	        }
	        
	        
	        var item = response.result.items[0],
	            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
	            point = new naver.maps.Point(item.point.x, item.point.y);
	        $('#lng').val(item.point.x);
	        $('#lat').val(item.point.y);
	        

	        var list="";
	        for(var i=0;i<response.result.total;i++){
	        	list=list+'<option id="addList" >'+response.result.items[i].address+'</option>';
	        }
	        $('#test').val(response.result.items[0].address);
	        $('#auto').html(list);

	        infoWindow.setContent([
	                '<div style="padding:10px;min-width:200px;line-height:150%;">',
					'<h4 style="margin-top:5px;">검색 주소 : '+ response.result.userquery +'</h4>',
	                addrType +' '+ item.address +'<br />',
	                '</div>'
	            ].join('\n'));


	        map.setCenter(point);
	        infoWindow.open(map, point);
	    });
	    
	}
	
	
	

	function addSet(){
		$('#test').val($('#auto').val());
	};
	
	function initGeocoder() {
		
		
	    map.addListener('click', function(e) {
	    	if(fix!=0)
	    	{
		        searchCoordinateToAddress(e.coord);	    		
	    	}
	    	else alert("고정된 주소입니다.");
	    });
	    
	    $('#fix_pin').click(function(e) {
	        fix=0;
	        alert("핀이 고정됨");
	        
	    });
	    $('#reset_pin').click(function(e) {
	        fix=1;
	        alert("핀이 고정 풀림");
	        
	    });

	    $('#address').on('keydown', function(e) {
	        var keyCode = e.which;

	        if (keyCode === 13) { // Enter Key
	            searchAddressToCoordinate($('#address').val());
	        }
	    });

	    $('#submit').on('click', function(e) {
	    	if(fix!=0)
	    	{
		        e.preventDefault();
		        searchAddressToCoordinate($('#address').val());
	    	}
	    	else alert("고정된 주소입니다.");

	    });

	    searchAddressToCoordinate('정자동 178-1');
	}

	naver.maps.onJSContentLoaded = initGeocoder;
</script>



</body>
