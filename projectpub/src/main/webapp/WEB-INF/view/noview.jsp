<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/formskin.css" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/notice.css">

<script type="text/javascript">
	$(document).ready(function() {
		$('#list').bind('click', listRun);

		$('#update').bind('click', updateRun);
		$('#delete').bind('click', deleteRun);
	});

	function listRun() {

		$('#frm').attr('action', "notice.do").submit();
	}

	function updateRun() {
		$('#frm').attr('action', "noupdate.do").submit();
	}

	function deleteRun() {
		$('#frm').attr('action', "nodelete.do").submit();
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
			<div class="col-md-6 col-md-offset-3" id="border">
				<h1 class="col-md-6">Notice</h1>

				<div class="col-md-6 text-right">
					<form class="form-inline" id="frm" name="frm" method="get">
						<input class="btn btn-default" type="button" id="list" value="목록" />
						<c:if test="${mem.userchk=='A'}">
							<input class="btn btn-default" type="button" id="update"
								value="수정" />
							<input class="btn btn-danger" type="button" id="delete"
								value="삭제" />
						</c:if>

						<form name="frm" id="frm" method="get">
							<input type="hidden" name="num" value="${dto.n_num}" /> <input
								type="hidden" name="currentPage" id="currentPage"
								value="${currentPage}" /> <input type="hidden" name="id"
								value="${dto.id}" />
						</form>

					</form>
				</div>

				<div class="panel col-md-12" id="frm">
					<div class="panel-heading">
						<h2 class="panel-title">
							<strong>${dto.n_title}</strong>
						</h2>
					</div>
					<hr />
					<div class="panel-body">

						<div class="col-md-6 text-left">
							<small>${dto.id}</small>
						</div>
						<div class="col-md-6">
							<p class="text-right">
								<strong>조회수</strong><small>${dto.n_viewcnt}</small>
							</p>
						</div>



						<hr />

						<div class="col-md-12">${dto.n_contents}</div>




					</div>
				</div>
			</div>



		</div>
	</div>






</body>
</html>
