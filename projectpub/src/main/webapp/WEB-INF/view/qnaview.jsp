<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/notice.css">
<style type="text/css">
#border {
	/* outline: 1px solid orange; */
	background-color: #F5F5F5;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$('#list').bind('click', listRun);
		$('#replay').bind('click', replayRun);
		$('#update').bind('click', updateRun);
		$('#delete').bind('click', deleteRun);
		$('#delete2').bind('click', deleteRun);
	});

	function listRun() {

		$('#frm').attr('action', "qna.do").submit();
	}

	function replayRun() {
		$('#frm').attr('action', "qnawrite.do").submit();
	}

	function updateRun() {
		$('#frm').attr('action', "qnaupdate.do").submit();
	}

	function deleteRun() {
		$('#frm').attr('action', "qnadelete.do").submit();
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
				<h1 class="col-md-6">Q&A</h1>
				<div class="col-md-6 text-right">
					<form class="form-inline" id="frm" name="frm" method="get">

						<input type="hidden" name="num" value="${dto.q_num}" /> <input
							type="hidden" name="currentPage" id="currentPage"
							value="${currentPage}" /> <input type="hidden" name="id"
							value="${dto.id}" /> <input type="hidden" name="qr_num"
							value="${dto.qr_num}" /> <input type="hidden" name="qr_step"
							value="${dto.qr_step}" /> <input type="hidden" name="qr_level"
							value="${dto.qr_level}" /> <input class="btn btn-default"
							type="button" id="list" value="목록" />
						<!-- admin button -->
						<c:choose>
							<c:when test="${mem.userchk=='A'}">
								<input class="btn btn-primary" type="button" id="replay"
									value="답변" />
								<input class="btn btn-danger" type="button" id="delete"
									value="삭제" />

							</c:when>
							<c:otherwise>
							<c:if test="${dto.id==mem.id}">
								<input class="btn btn-primary" type="button" id="update"
									value="수정" />
								<input class="btn btn-danger" type="button" id="delete2"
									value="삭제" />
									</c:if>
							</c:otherwise>

						</c:choose>


					</form>



				</div>



				<hr />

				<!-- form -->
				<div class="panel col-md-12" id="frm">
					<div class="panel-heading">
						<h2 class="panel-title">
							<strong>${dto.q_title}</strong>
						</h2>
					</div>
					<hr />
					<div class="panel-body">

						<div class="col-md-6 text-left">
							<small>${dto.id}</small>
						</div>
						<div class="col-md-6">
							<p class="text-right">
								<strong>조회수</strong><small>${dto.q_viewcnt}</small>
							</p>
						</div>


						<div class="col-md-12 text-right">
							<p>
								<small>첨부파일</small> ${fn:substringAfter(dto.q_upload,'_')}
								<c:if test="${empty dto.q_upload }">
									<c:out value="없음" />
								</c:if>
							</p>
							<c:choose>
							<c:when test="${!empty dto.q_upload}">
							<img src="\projectpub\temp//${dto.q_upload}" class="col-md-12" />
							</c:when>
							</c:choose>

						</div>

						<hr />
						<div class="col-md-12">${dto.q_contents}</div>




					</div>
				</div>



			</div>
		</div>
	</div>

</body>
</html>







