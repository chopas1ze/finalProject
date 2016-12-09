<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<script type="text/javascript"
	src="//apis
	.daum.net/maps/maps3.js?apikey=731f03a939fe898215f7cb004ab21b84&libraries=services"></script>

<style type="text/css">
#submain1 {
	background-color: #D69769;
}

#submain2 {
	background-color: white;
}

#submain1 p {
	color: #FFFFFF;
}

#submain2 p {
	color: black;
}

#zeropadding {
	padding: 0px;
}

#maxheight {
	max-height: 500px;
}

#icon h4 {
	color: red;
}
</style>


<title>Carousel Template for Bootstrap</title>




<!-- Custom styles for this template -->
<link href="css/carousel.css" rel="stylesheet">

</head>

<body>


	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="images/main.jpg" alt="First slide">

				<div class="container">
					<div class="carousel-caption">
						<h1>The Pub.</h1>
						<p>beer bar</p>
						<p>you can't drink all day... if you don't start in the
							morning</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Reservation
								today</a>
						</p>
					</div>
				</div>

			</div>
			<div class="item">
				<img class="second-slide" src="images/main2.png" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Join us</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">funny
								days</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="images/main3.png" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Enjoy with us</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->






	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row" id="icon">
			<div class="col-xs-12 col-lg-4">
				<img class="img-circle" src="images/ad.png"
					alt="Generic placeholder image" width="140" height="140">
				<h1>
					<strong>Advertisement</strong>
				</h1>
				<h4 style="">자신의 매장 홍보</h4>
				<p>웹상에서 좀더 빠르고 지속적인 광고효과를 누리세요!</p>
				<p>
					<a class="btn btn-default" href="mypage.do" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="images/rocket.png"
					alt="Generic placeholder image" width="140" height="140">
				<h1>
					<strong>Fast Reservation</strong>
				</h1>
				<h4>편리하고 빠른 예약 시스템</h4>
				<p>직관적으로 구성되어 있는 메뉴바를 통하여 예약시간을 단축시켰습니다.</p>
				<p>
					<a class="btn btn-default" href="lookat.do" role="button">View
						pubs &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="images/discount.png"
					alt="Generic placeholder image" width="140" height="140">
				<h1>
					<strong>Various Coupon</strong>
				</h1>
				<h4>여러가지 할인혜택과 쿠폰 지급</h4>
				<p>The Pub이 제공하는 여러매장의 쿠폰들을 만나보세요.이용할수록 더 많은 혜택이 주어집니다!</p>
				<p>
					<a class="btn btn-default" href="event.do" role="button">View
						events &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
	</div>

	<div class="container-fluid" style="height: 500px;">
		<div class="col-md-12 text-center" style="padding: 100px;">
			<p style="font-size: 60px">Mix&Match is our business</p>
			<h3>Beer&Wine is our business</h3>
			<h1>/</h1>
			<p>
				<small>A pub, or public house, is an establishment licensed
					to sell alcoholic drinks, which traditionally include beer, ale and
					other brewed alcoholic drinks. It is a relaxed, social drinking
					establishment in Britain,Ireland, New Zealand, Canada, and
					Australia. In many places, especially in villages, a pub is the
					focal point of the community. Samuel Pepys described the pub as the
					heart of England. Pubs can be traced back to Roman taverns, through
					the Anglo-Saxon alehouse to the development of the tied house
					system in the 19th century. </small>
			</p>

		</div>
	</div>





	<!-- START THE FEATURETTES -->




	<div class="container-fluid">

		<div class="row featurette" id="submain1">
			<div class="col-md-6" style="padding: 50px;">
				<h2 class="featurette-heading">Beer houses and the 1830 Beer
					Act</h2>
				<h2>
					<span class="text-muted">Traditional English ale was made
						solely from fermented malt.</span>
				</h2>
				<p class="lead">The practice of adding hops to produce beer was
					introduced from the Netherlands in the early 15th century.
					Alehouses would each brew their own distinctive ale, but
					independent breweries began to appear in the late 17th century. By
					the end of the century almost all beer was brewed by commercial
					breweries.</p>
			</div>
			<div class="col-md-6" id="zeropadding">
				<img class="featurette-image img-responsive center-block"
					src="images/subpic.jpg" alt="Generic placeholder image">
			</div>
		</div>
	</div>


	<div class="row featurette" style="background-color: #242228;">

		<div class="col-md-4" id="zeropadding">
			<img id="maxheight" class="featurette-image img-responsive"
				src="images/centerpiccc1.jpg" alt="Generic placeholder image">
		</div>
		<div class="col-md-4" id="zeropadding">
			<img id="maxheight" class="featurette-image img-responsive"
				src="images/centerpicccc3.jpg" alt="Generic placeholder image">
		</div>
		<div class="col-md-4" id="zeropadding">
			<img id="maxheight" class="featurette-image img-responsive"
				src="images/centerpicccc2.jpg" alt="Generic placeholder image">
		</div>

	</div>


	<hr class="featurette-divider" style="margin-top: -80px;">

	<div class="row featurette" id="submain2">
		<div class="col-md-6">
			<img class="featurette-image img-responsive center-block"
				src="images/subpic2.jpg" alt="Generic placeholder image">
		</div>
		<div class="col-md-6" style="padding: 50px;">
			<h2 class="featurette-heading">
				And lastly, this one. <span class="text-muted">Checkmate.</span>
			</h2>
			<p class="lead">Donec ullamcorper nulla non metus auctor
				fringilla. Vestibulum id ligula porta felis euismod semper. Praesent
				commodo cursus magna, vel scelerisque nisl consectetur. Fusce
				dapibus, tellus ac cursus commodo.</p>
		</div>
	</div>
	<div class="container-fluid" style="height: 500px;">
		<div class="col-md-12 text-center" style="padding: 100px;">
			<p style="font-size: 60px">Mix&Match is our business</p>
			<h3>Beer&Wine is our business</h3>
			<h1>/</h1>
			<p>The inhabitants of the British Isles have been drinking ale
				since the Bronze Age, but it was with the arrival of the Roman
				Empire on its shores in the 1st Century, and the construction of the
				Roman road networks that the first inns, called tabernae, in which
				travellers could obtain refreshment began to appear. After the
				departure of Roman authority in the 5th Century and the fall of the
				Romano-British kingdoms, the Anglo-Saxons established alehouses that
				grew out of domestic dwellings, the Anglo-Saxon alewife would put a
				green bush up on a pole to let people know her brew was ready. These
				alehouses quickly evolved into meeting houses for the folk to
				socially congregate, gossip and arrange mutual help within their
				communities. Herein lies the origin of the modern public house, or
				"Pub" as it is colloquially called in England. They rapidly spread
				across the Kingdom, becoming so commonplace that in 965 King Edgar
				decreed that there should be no more than one alehouse per village.</p>

		</div>
	</div>
	<div class="container-fluid" style="padding: 0px;">
		<div id="map_wrap">
			<div id="map" style="width: 100%; height: 350px;"></div>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};

				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption);

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다
				geocoder
						.addr2coord(
								'서울특별시 중구 남대문로 120 대일빌딩',
								function(status, result) {

									// 정상적으로 검색이 완료됐으면 
									if (status === daum.maps.services.Status.OK) {

										var coords = new daum.maps.LatLng(
												result.addr[0].lat,
												result.addr[0].lng);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new daum.maps.Marker({
											map : map,
											position : coords
										});

										// 인포윈도우로 장소에 대한 설명을 표시합니다
										var infowindow = new daum.maps.InfoWindow(
												{
													content : '<div style="width:150px;text-align:center;padding:6px 0;">The pub</div>'
												});
										infowindow.open(map, marker);

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
									}
								});
			</script>
		</div>
	</div>





	<!-- /END THE FEATURETTES -->




	<!-- /.container -->
</body>
</html>
