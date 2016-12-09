<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/notice.css">
<title>Insert title here</title>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#update').on('click', updateRun);

						$("#back").on('click', backRun);
						$('[name=n_contents]').val(
								$('[name=n_contents]').val().trim());
						$('[name=n_contents]').val(
								$('[name=n_contents]').val().replace(
										/<br\s?\/?>/g, "\n"));

					});
	function updateRun() {
		$('[name=n_contents]').val(
				$('[name=n_contents]').val().replace(/\n/gi, '<br/>'));

		$('#frm').attr('action', 'noupdate.do').submit();
	}

	function backRun() {
		history.back();
	}
</script>


</head>
<body>



	<%
		//치환 변수 선언
		pageContext.setAttribute("cr", "\r"); //Space
		pageContext.setAttribute("cn", "\n"); //Enter
		pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
		pageContext.setAttribute("br", "<br/>"); //br 태그
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form class="form-horizontal" name="frm" id="frm" method="post"
					enctype="multipart/form-data" onsubmit="return process()">

					<div class="form-group">
						<label>작성자</label> <input type="text" name="id"
							class="form-control" value="${dto.id}">
					</div>

					<div class="form-group">
						<label>제목</label> <input type="text" class="form-control"
							name="n_title" id="n_title" value="${dto.n_title}" />
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="n_contents" rows="10"
							placeholder="내용을 입력하세요"></textarea>
					</div>

					<div class="form-group text-right">
						<input type="hidden" name="n_num" value="${dto.n_num}" /> <input
							type="hidden" name="currentPage" value="${currentPage}" /> <input
							type="button" class="btn btn-info" id="update" value="수정" /> <input
							type="button" class="btn btn-default" id="back" value="뒤로" />
					</div>

				</form>

			</div>
		</div>
	</div>

</body>
</html>









