<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/mine.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	var mdto_allow_chk = "${sessionScope.mem.allow_chk}";
	var pub_chk = "${sellreserv[0].p_pub_chk}";
	var pub_chk = "${sellreserv[0].p_pub_chk}";
</script>
</head>
<body>
	<c:if test="${sessionScope.mem.userchk=='C'}">
		<script>
			alert('판매자가 아닙니다.');
			location.href = "mypage.do";
		</script>
	</c:if>
	<div class="section">
		<div class="container">
			<div class="row">

				<!-- side bar -->
				<div class="col-md-2 col-md-offset-1">
					<ul class="nav nav-sidebar" style="margin-top: 30px">
						<c:choose>
							<c:when test="${mdto[0].face!=null}">
								<li class="text-center"><img id="face_pic"
									src="\projectpub\temp//${mdto[0].face}"
									style="width: 50px; height: 50px; border-radius: 20px;" /></li>
							</c:when>
							<c:otherwise>
								<li class="text-center"><img id="face_pic"
									src="images\nopicture.png"
									style="width: 50px; height: 50px; border-radius: 20px;" /></li>
							</c:otherwise>
						</c:choose>
					</ul>
					<ul class="nav nav-sidebar">
						<li class="active text-center"><a href="mypage.do">${mdto[0].name}님</a></li>
						<li class="text-center"><a href="#" onclick="memuptint();">회원정보수정</a></li>
						<li class="text-center"><a href="#" onclick="gotomessage();">쪽지함</a></li>
					</ul>
					<c:choose>
						<c:when test="${mdto[0].userchk=='C'}">
							<!-- 구매자 -->
							<ul class="nav nav-sidebar">
								<li class="text-center"><a href="#" onclick="joinsell();">판매자
										신청</a></li>
							</ul>
						</c:when>
						<c:when test="${mdto[0].userchk=='S'}">
							<c:choose>
								<c:when
									test="${sellreserv[0].p_pub_chk==null || sellreserv[0].p_pub_chk=='N' || sellreserv[0].p_pub_chk=='R'}">
									<ul class="nav nav-sidebar">
										<li class="text-center"><a href="#"
											onclick="joinpubready();">펍등록 신청</a></li>
									</ul>
								</c:when>
								<c:otherwise>
									<ul class="nav nav-sidebar">
										<li class="text-center"><a href="#"
											onclick="updatepub();">펍 수정</a></li>
										<li class="text-center"><a href="#"
											onclick="reservalllist();">예약 리스트</a></li>
									</ul>
								</c:otherwise>
							</c:choose>
						</c:when>
					</c:choose>
					<ul class="nav nav-sidebar">
						<li class="text-center"><a href="#" onclick="leaveready();">회원탈퇴</a></li>
					</ul>

				</div>
				<!-- end of side bar -->
				<div class="col-md-7 main test">
					<h2 class="page-header">PUB 등록 양식</h2>
					
					<form class="form-horizontal" id="jpfrm" method="POST"
						enctype="multipart/form-data" onsubmit="return process()">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="jpID">ID</label>
							<div class="col-sm-6">
								<input class="form-control" id="jpID" type="text" name="id"
									readonly="readonly" value="${mdto[0].id}" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="jpName">신청인</label>
							<div class="col-sm-6">
								<input class="form-control" id="jpName" type="text"
									readonly="readonly" value="${mdto[0].name}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="jpSaupja_num">사업자
								번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="jpSaupja_num" type="text"
									readonly="readonly" value="${mdto[0].saupja_num}">
								<p class="help-block">등록하신 사업자 번호 입니다.</p>
							</div>
						</div>



						<div class="form-group">
							<label class="col-sm-3 control-label" for="jppub_name">PUB
								이름</label>
							<div class="col-sm-6">
								<input class="form-control" id="jppub_name" type="text"
									name="p_title">
								<p class="help-block">PUB 이름을 등록해주세요.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="jppub_contents">PUB
								소개글 </label>
							<div class="col-sm-6">
								<textarea rows="15"  name="p_contents"
									id="jppub_contents" class="form-control"></textarea>
								<p class="help-block">PUB 소개글을 작성해주세요.</p>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="sample6_postcode">PUB
								address</label>
							<div class="col-sm-6">
								<input type="text" id="sample6_postcode" placeholder="우편번호"
									name="p_addr_post" readonly="readonly"> <input
									type="button" onclick="sample6_execDaumPostcode()"
									value="우편번호 찾기"><br> <input class="form-control"
									type="text" id="sample6_address" placeholder="주소"
									name="p_address" readonly="readonly">
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="jppub_maxpeople">최대
								예약 인원수 </label>
							<div class="col-sm-3">
								<input class="form-control" id="jppub_maxpeople" type="text"
									name="p_maxpeople" onkeydown="return showKeyCode(event)" placeholder="숫자만 기재">
								<!-- <p class="help-block">예약 가능한 최대 인원수를 적어주세요.(숫자만기재)</p> -->
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="jppub_mupload">Pub
								소개사진 </label>
							<div class="col-sm-6">
								<div id="jpmainpic"  style="width: 402px;"></div>
								<input class="form-control" id="jppub_mupload" type="file"
									name="filename" multiple="multiple">
								<p class="help-block">Pub 소개에 관련한 사진들을 등록해주세요.(최대4장)</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="jppub_supload">메뉴
								사진 </label>
							<div class="col-sm-6">
								<div id="jpsubface_div">
									<img id="jpsubface_show" width="286px" height="147px" />
								</div>
								<input class="form-control" id="jppub_supload" type="file"
									name="subfilename">
								<p class="help-block">Pub menu 사진을 올려주세요.</p>
							</div>
						</div>
						<input type="hidden" name="p_pub_chk" value="R" />
						<div class="form-group" >
							<div class="col-sm-12 text-center" style="margin-top: 20px;">
								<button class="btn btn-primary" type="button" id="jpbtn">
									신청하기</button>
								<button class="btn btn-danger" type="button" id="jpcanclebtn">
									취소</button>
							</div>
						</div>
					</form>
				</div>
				<!-- End MainMenu -->
			</div>
		</div>
	</div>

</body>
</html>