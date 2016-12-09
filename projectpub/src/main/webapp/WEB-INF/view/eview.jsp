<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/notice.css">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#list').bind('click', listRun);
		$('#update').bind('click', updateRun);
		$('#delete').bind('click', deleteRun);
		$('#coupon').bind('click', couponRun);
		$('#coupon2').bind('click', couponRun2);
		$('#coupon3').bind('click', couponRun3);

	});

	function listRun() {

		$('#frm').attr('action', "event.do").submit();
	}

	function updateRun() {
		$('#frm').attr('action', "eupdate.do").submit();
	}

	function deleteRun() {
		$('#frm').attr('action', "edelete.do").submit();
	}

	function couponRun() {
		$.ajax({
			type : 'POST',
			dataType : 'text',
			url : 'coupon.do',
			data : 'id=${sessionScope.mem.id}',
			success : function(res) {

				if (res == 'a') {
					alert("이미 쿠폰을 발급 받았습니다! My Page에서 확인 하세요")
					return false;
				} else {
					alert("쿠폰이 발급되었습니다. My Page에서 확인 하세요")
					return false;
				}
			}
		});

	}

	function couponRun2() {
		$.ajax({
			type : 'POST',
			dataType : 'text',
			url : 'coupon2.do',
			data : 'id=${sessionScope.mem.id}',
			success : function(res) {

				if (res == 'a') {
					alert("이미 쿠폰을 발급 받았습니다! My Page에서 확인 하세요")
					return false;
				} else {
					alert("쿠폰이 발급되었습니다. My Page에서 확인 하세요")
					return false;
				}
			}
		});
	}

	function couponRun3() {
		$.ajax({
			type : 'POST',
			dataType : 'text',
			url : 'coupon3.do',
			data : 'id=${sessionScope.mem.id}',
			success : function(res) {

				if (res == 'a') {
					alert("이미 쿠폰을 발급 받았습니다! My Page에서 확인 하세요")
					return false;
				} else {
					alert("쿠폰이 발급되었습니다. My Page에서 확인 하세요")
					return false;
				}
			}
		});
	}
</script>
</head>
<body>

	<!-- 치환 변수 선언 -->
	<c:set var="cr" value="\r" scope="page" />
	<c:set var="cn" value="\n" scope="page" />
	<c:set var="crcn" value="\r\n" scope="page" />
	<c:set var="br" value="<br/>" scope="page" />

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" id="border"
				style="margin-top: 30px;">
				<h1 class="col-md-6">Event</h1>
				<div class="col-md-6 text-right">
					<form class="form-inline" id="frm" name="frm" method="get">

						<input type="button" class="btn btn-default" id="list" value="목록" />
						<c:if test="${mem.userchk=='A'}">
							<input type="button" id="update" value="수정" />
							<input type="button" id="delete" value="삭제" />
						</c:if>


					</form>



				</div>

				<div class="panel col-md-12" id="frm">
					<div class="panel-heading">
						<h2 class="panel-title">
							<strong>${dto.e_title}</strong>
						</h2>
					</div>
					<hr />
					<div class="panel-body">

						<div class="col-md-6 text-left">
							<small>${dto.id}</small>
						</div>
						<div class="col-md-6">
							<p class="text-right">
								<strong>조회수</strong><small>${dto.e_viewcnt}</small>
							</p>
						</div>

						<div class="col-md-12 text-right">
							<img src="\projectpub\temp//${dto.e_upload}" class="col-md-12" />
						</div>
						<hr />
						<div class="col-md-12">${dto.e_contents}</div>

					</div>
				</div>



			</div>
		</div>
		<div class="row col-md-6 col-md-offset-3">

			<form name="frm" id="frm" method="get">

				<input type="hidden" name="num" value="${dto.e_num}" /> <input
					type="hidden" name="currentPage" id="currentPage"
					value="${currentPage}" /> <input type="hidden" name="id"
					value="${dto.id}" />

			</form>
			<br>

			<!-- 쿠폰만들기 -->
			<c:if test="${sessionScope.mem!=null}">
			<!--50%쿠폰  -->
			<div class="couponbtn c">
				<form id="cfrm" name="cfrm" method="post">
					<input type="hidden" name="id" value="${mem.id}"
						onclick="javascript:this.onclick=null;" />
					<c:if test="${dto.e_num==1}">
						<input type="submit" class="btn btn-primary" id="coupon" name="c_contents"
							value="25%쿠폰발급 받기" />
					</c:if>
				</form>
				<!-- 30%쿠폰 -->
				<form id="cfrm2" name="cfrm2" method="post">

					<input type="hidden" name="id" value="${mem.id}"
						onclick="javascript:this.onclick=null;" />
					<c:if test="${dto.e_num==2}">
						<input type="submit" id="coupon2" class="btn btn-primary" name="c_contents"
							value="10%쿠폰발급 받기" />
					</c:if>
				</form>
				<!-- 10%쿠폰 -->
				<form id="cfrm3" name="cfrm3" method="post">

					<input type="hidden" name="id" value="${mem.id}"
						onclick="javascript:this.onclick=null;" />
					<c:if test="${dto.e_num==3}">
						<input type="submit" id="coupon3" class="btn btn-primary" name="c_contents"
							value="5%쿠폰발급 받기" />
					</c:if>
				</form>
			</div>
			<!-- 쿠폰만들기 끝 -->
			
			</c:if>
			
			
			<br>

		</div>


	</div>


	<div id="bodywrap"></div>
</body>
</html>







