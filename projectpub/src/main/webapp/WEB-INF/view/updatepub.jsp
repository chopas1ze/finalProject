<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/mine.js?ver=1"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	var p_upload = "${mdtopub[0].pub[0].p_mupload}";
	var parray = p_upload.split('/');
	var mdto_allow_chk = "${sessionScope.mem.allow_chk}";
	var pub_chk = "${sellreserv[0].p_pub_chk}";
	
	$(document)
			.ready(
					function() {
						// 저장된 다중 이미지 불러오기
						for (var i = 0; i < parray.length; i++) {
							var img = new Image();
							img.src = ".\\temp//" + parray[i];
							img.width = 200;
							img.height = 150;
							$('#upmainpic').append(img);
						}
						;

						//공백제거
						$('[name=p_contents]').val(
								$('[name=p_contents]').val().trim());
						$('[name=p_contents]').val(
								$('[name=p_contents]').val().replace(
										/<br\s?\/?>/g, "\n"));

					});

	//공백 br 변환
	function process2() {
		$('[name=p_contents]').val(
				$('[name=p_contents]').val().replace(/\n/gi, '<br/>'));
		return true;
	};
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

					<h2 class="page-header">PUB 수정페이지</h2>
					<form class="form-horizontal" id="upfrm" method="POST"
						enctype="multipart/form-data" onsubmit="return process2()">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="upID">ID</label>
							<div class="col-sm-6">
								<input class="form-control" id="upID" type="text" name="id"
									readonly="readonly" value="${mdtopub[0].id}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="upName">신청인</label>
							<div class="col-sm-6">
								<input class="form-control" id="upName" type="text"
									readonly="readonly" value="${mdtopub[0].name}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="upSaupja_num">사업자
								번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="upSaupja_num" type="text"
									readonly="readonly" value="${mdtopub[0].saupja_num}">
								<p class="help-block">등록하신 사업자 번호 입니다.</p>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="uppub_name">PUB
								이름</label>
							<div class="col-sm-6">
								<input class="form-control" id="uppub_name" type="text"
									name="p_title" value="${mdtopub[0].pub[0].p_title}">
								<p class="help-block">PUB 이름을 등록해주세요.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="uppub_contents">PUB
								소개글 </label>
							<div class="col-sm-6">
								<textarea rows="15" name="p_contents" class="form-control"
									id="uppub_contents">${mdtopub[0].pub[0].p_contents}</textarea>
								<p class="help-block">PUB 소개글을 작성해주세요.</p>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="sample6_postcode">PUB
								address</label>
							<div class="col-sm-6">
								<input type="text" id="sample6_postcode" placeholder="우편번호"
									name="p_addr_post" readonly="readonly"
									value="${mdtopub[0].pub[0].p_addr_post}"> <input
									type="button" onclick="sample6_execDaumPostcode()"
									value="우편번호 찾기"><br> <input class="form-control"
									type="text" id="sample6_address" placeholder="주소"
									name="p_address" readonly="readonly"
									value="${mdtopub[0].pub[0].p_address}">
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-3 control-label" for="uppub_maxpeople">최대
								예약 인원수 </label>
							<div class="col-sm-3">
								<input class="form-control" id="uppub_maxpeople" type="text" placeholder="예약 가능한 최대 인원수를 적어주세요.(숫자만기재)"
									name="p_maxpeople" value="${mdtopub[0].pub[0].p_maxpeople}명"
									onkeydown="return showKeyCode(event)">
								<!-- <p class="help-block">예약 가능한 최대 인원수를 적어주세요.(숫자만기재)</p> -->
							</div>
							
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="uppub_mupload">Pub
								소개사진 </label>
							<div class="col-sm-6">
								<div id="upmainpic" style="width: 402px;"></div>
								<input class="form-control" id="uppub_mupload" type="file"
									name="filename" multiple="multiple">
								<p class="help-block">Pub 소개에 관련한 사진들을 등록해주세요.(최대4장)</p>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="uppub_supload">메뉴
								사진 </label>
							<div class="col-sm-6">
								<div id="upsubface_div">
									<img id="upsubface_show" width="286px" height="147px"
										src="\projectpub\temp//${mdtopub[0].pub[0].p_supload}" />
								</div>
								<input class="form-control" id="uppub_supload" type="file"
									name="subfilename">
								<p class="help-block">Pub menu 사진을 올려주세요.</p>
							</div>
						</div>
						<input type="hidden" name="p_num" value="${mdtopub[0].pub[0].p_num}" />
						<input type="hidden" name="p_pub_chk"
							value="${mdtopub[0].pub[0].p_pub_chk}" />
						<div class="form-group">
							<div class="col-sm-12 text-center" style="margin-bottom: 20px">
								<button class="btn btn-primary" type="button" id="upbtn">
									수정하기</button>
								<button class="btn btn-danger" type="button" id="upcanclebtn">
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