<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<style type="text/css">
.section {
	padding: 10px 0;
}

.block {
	border-color: #bdc3c7;
	background-color: #FAFAFA;
	box-shadow: 10px 10px 10px silver;
	-moz-box-shadow: 10px 10px 10px silver;
	-webkit-box-shadow: 10px 10px 10px silver;
}

.nopadding {
	padding-left: 0px;
}

/* .starview {
	width: 180px;
} */
#starview {
	width: 150px;
}

.score {
	float: left;
	display: inline;
}

.star_input {
	width: 150px;
	height: 30px;
	display: inline-block;
	background-image: url('images/star0.png');
	background-size: 30px, 30px;
}

div span.star {
	width: 15px;
	height: 30px;
	display: inline-block;
	float: left;
}

.over-left {
	background-image: url('images/left.png');
	background-size: 15px, 30px;
}

.over-right {
	background-image: url('images/right.png');
	background-size: 15px, 30px;
}

.hh1 {
	display: inline-block;
	float: left;
}

.hh2 {
	display: inline-block;
}
</style>

<title>Carousel Template for Bootstrap</title>


<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>




<script type="text/javascript"
	src="//apis
	.daum.net/maps/maps3.js?apikey=731f03a939fe898215f7cb004ab21b84&libraries=services"></script>
<script src="js/reservation.js?ver=2" type="text/javascript"></script>

<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<script type="text/javascript">
	var param_p_num = "${param.p_num}";
	var idx = 0;
	var session_id = "${sessionScope.mem.id}";
	var staravg = "${rdto[0].star.s_stars}";
	var logchk = "${sessionScope.chk}"
	
	
	function hitEnterKey(e) {
		if (e.keyCode == 13) {
			abcdef();
		}
	}
	
	
	function abcdef() {
		if ($('#re_content').val().length == 0) {
			alert('댓글을 입력해주세요');
		} else {
			reply_InsertLlist();
		}
	};
	

	/* <c:forEach items="${rdto[0].reply}" var="reply">
	<div class="col-md-12" id="reply_12">
	<div class="col-md-2">
	<span id="reply_id"><strong>${reply.id }</strong></span>
	</div>
	<div class="col-md-7">
	<span class="reply_content${reply.pr_num}"
				id="reply_content">${reply.pr_content }</span>
	</div>
	
	<div class="col-md-3 text-right">
	<c:if test="${sessionScope.mem.id==reply.id}">
		<button class="reply_update btn btn-default btn-sm"
					value="${reply.pr_num}" name="pr_num">수정</button>
		<button class="reply_del btn btn-default btn-sm"
					value="${reply.pr_num}" name="pr_num">삭제</button>
	</c:if>
	</div>

	<hr />

	</div>
	</c:forEach>  */
	function viewMessage(res) {
		$('#reply_12').empty();

		$
				.each(
						res,
						function(index, value) {
							$('#reply_12')
									.append(
											'<div id="rereply_'+value.pr_num+'"class="col-md-12" id="reply_12"><div class="col-md-2"><span id="reply_id"><strong>'
													+ value.id
													+ '</strong></span></div><div class="col-md-7"><span class="reply_content'
													+value.pr_num+'"id="reply_content">'
													+ value.pr_content
													+ '</span></div>');
							if (session_id == value.id) {
								$('#rereply_' + value.pr_num)
										.append(
												'<div class="col-md-3 text-right"><button class="reply_update btn btn-default btn-sm"value="'
												+value.pr_num+'" name="'+value.pr_num+'">수정</button><button class="reply_del btn btn-default btn-sm"value="'
												+value.pr_num+'" name="'+value.pr_num+'">삭제</button></div><hr />');
							}
							$('#reply_12').append('</div>');
						});
		$('#re_content').val('');
	}

	//별점 띄워주는 제이쿼리
	function starViewMessage(res) {
		$('#star_all').empty();
		$('#star_all')
				.append(
						/* 
						 <h4 class="hh1">평균 별점 :</h4>
						 <div id="starview" class="hh1"></div>
						 <h4 class="hh2">${rdto[0].star.s_stars}점</h4> */
						'<h4 class="hh1">평균 별점 :</h4><div id="starview" class="hh1"></div><h4 class="hh2">'
								+ res.s_stars + '점</h4>');
		var star = res.s_stars;
		star_view(star);

	}
	function star(res) {

	}
</script>
</head>
<body>
	<div class="section">
		<div class="container">
			<h1>
				<strong>예약 안내</strong>
			</h1>
			<hr />

			<div class="row">

				<div class="col-md-6">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img class="first-slide" src="\projectpub\temp//${pubimg[0]}"
									alt="First slide" style="width: 100%; height: 400px;">

								<div class="container">
									<div class="carousel-caption">
										<h1>${rdto[0].p_title}</h1>
										<!-- <p>Note: If you're viewing this page via a URL, the "next"
											and "previous" Glyphicon buttons on the left and right might
											not load/display properly due to web browser security rules.
										</p> -->
									</div>
								</div>

							</div>
							<div class="item">
								<img class="second-slide" src="\projectpub\temp//${pubimg[1]}"
									alt="Second slide" style="width: 100%; height: 400px;">
								<div class="container">
									<div class="carousel-caption">
										<!-- <h1>Another example headline.</h1>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
									</div>
								</div>
							</div>
							<div class="item">
								<img class="third-slide" src="\projectpub\temp//${pubimg[2]}"
									alt="Third slide" style="width: 100%; height: 400px;">
								<div class="container">
									<div class="carousel-caption">
										<!-- <h1>One more for good measure.</h1>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
									</div>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>


				<div class="col-md-6">

					<h4>
						<strong>${rdto[0].p_title}</strong>
					</h4>
					<p>판매자 : ${rdto[0].id}</p>
					<p>예약최대인원 : ${rdto[0].p_maxpeople}명</p>
					<p>주소 : ${rdto[0].p_address}</p>
					<hr />

					<!-- Single button -->
					<form class="form" id="frm" method="post">

						<div class="form-group col-md-6">
							<label>날짜</label> <input id="reser_date" type="date"
								class="form-control" name="res_date" size="10" maxlength="20" />
						</div>

						<div class="form-group col-md-6">
							<label>시간</label> <select class="form-control" id="reser_time"
								name="res_time">
								<option value="n">선택하세요</option>
								<option value="18시">18:00</option>
								<option value="19시">19:00</option>
								<option value="20시">20:00</option>
								<option value="21시">21:00</option>
								<option value="22시">22:00</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label>인원수</label> <select class="form-control" name="res_people"
								id="res_people">
								<c:forEach var="data" varStatus="status" begin="1"
									end="${rdto[0].p_maxpeople}" step="1">
									<option value="${data }">${data }</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group col-md-6">
							<label>쿠폰</label> <select class="form-control" name="c_num">
								<option value="없음">쿠폰 선택</option>
								<c:forEach items="${coupon }" var="co">
									<option value="${co.c_num}">${co.c_contents}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col-md-12">
							<input type="hidden" name="p_num" value="${rdto[0].p_num}" /> <input
								type="button" class="btn btn-info btnRes" value="예약하기" /> <input
								type="hidden" name="id" value="${sessionScope.mem.id}" />
						</div>
						<!-- <div class="col-md-2 col-md-offset-3">
								<button type="button" class="btn btn-success">예약하기</button>
							</div> -->

					</form>
					<hr />


				</div>

				<!-- end of main -->
			</div>
			<!-- end of row -->
			<div class="section">
				<div class="container">
					<div class="row">
						<!-- 내용 -->
						<c:forEach items="${pubimg}" var="img">
							<img class="slide_sub col-md-3" src="\projectpub\temp//${img }"
								height="200px" alt="사진" />
							<!-- <h2>A title</h2>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisici elit, <br>sed
									eiusmod tempor incidunt ut labore et dolore magna aliqua. <br>Ut
									enim ad minim veniam, quis nostrud
								</p> -->
						</c:forEach>
						<div class="col-md-12">
							<hr />
							<h2>Pub Introduction</h2>
							<p>${rdto[0].p_contents}</p>
							<p>주소 : ${rdto[0].p_address}</p>
							<!-- 별점 시작 -->
							<c:choose>
								<c:when test="${sessionScope.mem!=null}">
									<c:choose>
										<c:when test="${ss==null}">
											<div id="star_all">
												<h4 class="hh1">별점 평가 :</h4>
												<div class="star_input">
													<span class="star"></span> <span class="star"></span> <span
														class="star"></span> <span class="star"></span> <span
														class="star"></span> <span class="star"></span> <span
														class="star"></span> <span class="star"></span> <span
														class="star"></span> <span class="star"> </span>
												</div>
												<div class="hh2">
													<h4>
														<span class="score"></span>
													</h4>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<!-- 별점 평균 및 띄워주기 -->
											<h4 class="hh1">평균 별점 :</h4>
											<div id="starview" class="hh1"></div>
											<h4 class="hh2">${rdto[0].star.s_stars}점</h4>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<!-- 별점 평균 및 띄워주기 -->
									<h4 class="hh1">평균 별점 :</h4>
									<div id="starview" class="hh1"></div>
									<h4 class="hh2">${rdto[0].star.s_stars}점</h4>
								</c:otherwise>
							</c:choose>
							<!-- 별점 끝-->

						</div>
						<div class="col-md-12">
							<hr />
							<h2>Menu</h2>
							<img class="slide_sub col-md-12"
								src="\projectpub\temp//${rdto[0].p_supload}" height="600px"
								alt="사진" />
						</div>
						<hr />
					</div>
				</div>
			</div>
			<!-- end of summary -->
			<div class="section">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<!-- 다음API 주소 입력시 장소 표시 및 마크까지 js로 넘기면 안됩니다.ㅠㅠㅠ-->
							<div id="map_wrap" class="col-md-12">
								<hr />
								<h2>Route</h2>
								<div id="map" style="width: 100%; height: 350px;"></div>
								<script>
									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new daum.maps.LatLng(
												33.450701, 126.570667), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									// 지도를 생성합니다    
									var map = new daum.maps.Map(mapContainer,
											mapOption);

									// 주소-좌표 변환 객체를 생성합니다
									var geocoder = new daum.maps.services.Geocoder();

									// 주소로 좌표를 검색합니다
									geocoder
											.addr2coord(
													'${rdto[0].p_address}',
													function(status, result) {

														// 정상적으로 검색이 완료됐으면 
														if (status === daum.maps.services.Status.OK) {

															var coords = new daum.maps.LatLng(
																	result.addr[0].lat,
																	result.addr[0].lng);

															// 결과값으로 받은 위치를 마커로 표시합니다
															var marker = new daum.maps.Marker(
																	{
																		map : map,
																		position : coords
																	});

															// 인포윈도우로 장소에 대한 설명을 표시합니다
															var infowindow = new daum.maps.InfoWindow(
																	{
																		content : '<div style="width:150px;text-align:center;padding:6px 0;">${rdto[0].p_title}</div>'
																	});
															infowindow
																	.open(map,
																			marker);

															// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
															map
																	.setCenter(coords);
														}
													});
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of map -->


			<div class="section">
				<div class="container">
					<div class="row">
						<hr />
						<div class="col-md-8 col-md-offset-2">
							<div class="panel panel-default block">
								<h4>Reply</h4>
								<div class="panel-body">
									<c:if test="${sessionScope.mem!=null}">
										<form id="reply_form" action="pubview.do" method="post"
											onsubmit="return false">
											<div class="form-group">
												<label>${sessionScope.mem.id}</label> <input
													name="pr_content" id="re_content" type="text"
													class="form-control" placeholder="댓글을 입력하세요." onKeypress="hitEnterKey(event)">
											</div>
											<input id="reply_commit" type="button"
												class="btn btn-info text-right" value="댓글달기" /><input
												type="hidden" name="p_num" value="${param.p_num}" />
										</form>
									</c:if>
									<hr />
									<div class="row" id="reply_12">
										<c:forEach items="${rdto[0].reply}" var="reply">
											<div class="col-md-12">


												<div class="col-md-2">
													<span id="reply_id"><strong>${reply.id }</strong></span>
												</div>
												<div class="col-md-7">
													<span class="reply_content${reply.pr_num}"
														id="reply_content">${reply.pr_content }</span>
												</div>
												<div class="col-md-3 text-right">
													<c:if test="${sessionScope.mem.id==reply.id}">
														<button class="reply_update btn btn-default btn-sm"
															value="${reply.pr_num}" name="pr_num">수정</button>
														<button class="reply_del btn btn-default btn-sm"
															value="${reply.pr_num}" name="pr_num">삭제</button>
													</c:if>
												</div>

												<hr />

											</div>
										</c:forEach>
									</div>


								</div>
							</div>

						</div>
					</div>
				</div>


			</div>
		</div>



	</div>
</body>
</html>
