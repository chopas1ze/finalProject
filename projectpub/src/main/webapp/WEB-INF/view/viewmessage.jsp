<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/message.css?ver=3" />
<script type="text/javascript" src="js/message.js?ver=2"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(
			function() {

				//공백제거
				$('[name=t_message]').val($('[name=t_message]').val().trim());
				$('[name=t_message]').val(
						$('[name=t_message]').val()
								.replace(/<br\s?\/?>/g, "\n"));

			});
</script>
</head>
<body>

	<div class="full">
		<div class="sidemenu">
			<h2 class="page-header text-center">쪽지함</h2>
			<ul class="nav nav-sidebar">
				<li class=" text-center"><a href="writemessage.do">쪽지 보내기</a></li>
				<li class="text-center"><a href="gotomessage.do">받은 쪽지함</a></li>
				<li class="text-center"><a href="sendmessage.do">보낸 쪽지함</a></li>
			</ul>
		</div>
		<!-- End SideMenu -->

		<div class="mainmenu">

			<div class="head_ment">
				<span>${sessionScope.mem.id}님의 쪽지보기 입니다.</span>
			</div>
			<hr />
			<div class="infodiv">
				<c:choose>
					<c:when test="${sendview!=null}">
						<label class="col-sm-2 control-label">받은 사람:</label>
						<div class="col-sm-4" style="padding-left: 0px;">${tdto.t_resp}
						</div>
					</c:when>
					<c:otherwise>
						<label class="col-sm-2 control-label">보낸 사람:</label>
						<div class="col-sm-4" style="padding-left: 0px;">${tdto.id}
						</div>

					</c:otherwise>
				</c:choose>
				<div id="dateprint">${tdto.t_date}</div>

			</div>
			<form class="form-horizontal" id="viewfrm" method="POST">
				<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="view_title">제목</label>
					<div class="col-sm-8">
						<input class="form-control" id="view_title" type="text"
							value="${tdto.t_title}" readonly="readonly">
					</div>
				</div>

				<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="view_message">내용</label>
					<div class="col-sm-4">
						<textarea rows="10" cols="53" name="t_message" id="view_message"
							readonly="readonly">${tdto.t_message}</textarea>
					</div>
				</div>

				<div class="writebtndiv">

					<c:choose>
						<c:when test="${sendview!=null}">
							<input type="button" id="sendgotomsg_btn"
								class="btn btn-success btn-sm" value="리스트">
							<input type="button" id="senddelmesg_btn"
								class="btn btn-defalut btn-sm" value="삭제">
						</c:when>
						<c:otherwise>
							<input type="button" id="gotomsg_btn"
								class="btn btn-success btn-sm" value="리스트">
							<input type="button" id="delmesg_btn"
								class="btn btn-defalut btn-sm" value="삭제">
							<input type="button" id="rewrite_btn"
								class="btn btn-primary btn-sm" value="답장쓰기">
						</c:otherwise>
					</c:choose>
				</div>
				<%-- 	<input type="hidden" name="id" value="${memid}"> --%>
				<input type="hidden" name="t_num" value="${tdto.t_num}"> <input
					type="hidden" name="t_resp" value="${tdto.id}">
			</form>

		</div>
		<!-- End MainMenu -->
	</div>
</body>
</html>