<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="js/aja.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function searchfn() {
		$.ajax({
			type : 'GET',
			dataType : 'json',
			url : 'search.do?search=' + $('#search-con').val(),
			success : viewMessage2,
		});
	};
	$(document)
			.ready(
					function() {

						//공백제거
						$('[name=p_contents]').val(
								$('[name=p_contents]').val().trim());
						$('[name=p_contents]').val(
								$('[name=p_contents]').val().replace(
										/<br\s?\/?>/g, "\n"));

					});
</script>
</head>
<body>
	<c:if
		test="${sessionScope.mem.userchk=='C' || sessionScope.mem.userchk=='S'}">
		<script>
			alert('접근이 불가능합니다.');
			location.href = "mypage.do";
		</script>
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h1>&nbsp;PUB 등록 양식</h1>
				<hr />
				<form class="form-horizontal" id="jpfrm" method="POST"
					enctype="multipart/form-data" onsubmit="return process()">


					<div class="form-group">
						<label class="col-md-3 control-label" for="jpID">ID</label>
						<div class="col-md-6">
							<input class="form-control" id="jpID" type="text" name="id"
								value="${mdto[0].id}" disabled>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jpName">신청인</label>
						<div class="col-md-6">
							<input class="form-control" id="jpName" type="text" disabled
								value="${mdto[0].name}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jpSaupja_num">사업자
							번호</label>
						<div class="col-md-6">
							<input class="form-control" id="jpSaupja_num" type="text"
								disabled value="${mdto[0].saupja_num}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jppub_name">PUB
							이름</label>
						<div class="col-md-6">
							<input class="form-control" id="jppub_name" type="text" disabled
								value="${mdto[0].pub[0].p_title }">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jppub_contents">PUB
							소개글 </label>
						<div class="col-md-6">
							<textarea class="form-control" rows="14" name="p_contents"
								id="jppub_contents" disabled>${mdto[0].pub[0].p_contents}</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="sample6_postcode">PUB
							address</label>
						<div class="col-md-6">
							<input class="form-control col-md-3" type="text"
								id="sample6_postcode" placeholder="우편번호" disabled
								value="${mdto[0].pub[0].p_addr_post}"> <input
								class="form-control col-md-6" type="text" id="sample6_address"
								placeholder="주소" name="p_address" disabled
								value="${mdto[0].pub[0].p_address}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jppub_maxpeople">최대
							예약 인원수 </label>
						<div class="col-md-6" style="text-align: center;">
							<input class="form-control" id="jppub_maxpeople" disabled
								value="${mdto[0].pub[0].p_maxpeople}명">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jppub_mupload">Pub
							소개사진 </label>
						<div class="col-md-6">
							<div id="jpmainpic"
								style="width: 400px; height: 400px; float: left">

								<c:forEach var="i" begin="0"
									end="${fn:length(mdto[0].pub[0].p_mupload.split('/'))-1}">
									<img
										src="\projectpub\temp//${mdto[0].pub[0].p_mupload.split('/')[i]}"
										style="width: 198px; height: 198px;" alt="사진${i}" />
								</c:forEach>

							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="jppub_supload">메뉴
							사진 </label>
						<div class="col-sm-6">
							<div id="jpsubface_div">
								<img src="\projectpub\temp//${mdto[0].pub[0].p_supload}"
									style="width: 198px; height: 198px;" alt="사진${i}" />
							</div>
						</div>
					</div>

					<input type="hidden" name="p_pub_chk" value="N" />
					<div class="form-group">
						<div class="col-md-12 text-center">
							<button class="btn btn-primary" type="button" id="jpbtn">
								확인</button>
							<button class="btn btn-danger" type="button" id="jpcanclebtn">
								취소</button>
						</div>
					</div>
				</form>

			</div>
		</div>

	</div>
</body>
</html>