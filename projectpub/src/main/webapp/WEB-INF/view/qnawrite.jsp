<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/notice.css">

<script type="text/javascript">
	$(document).ready(function() {

		$('#btnSave').bind('click', function() {
			$('#frm').attr('action', 'qnawrite.do').submit();
		});

	});

	function process() {
		//document.frm.content.value = 
		// document.frm.content.value.replace( /\n/gi, '<br/>');
		$('[name=q_contents]').val(
				$('[name=q_contents]').val().replace(/\n/gi, '<br/>'));

		return true;
	}
</script>

</head>
<body>



	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form class="form-horizontal" name="frm" id="frm" method="post"
					enctype="multipart/form-data" onsubmit="return process()">

					<div class="form-group">
						<label>작성자</label> <input type="text" name="id" readonly="readonly"
							class="form-control" value="${mem.id}">
					</div>

					<div class="form-group">
						<label>제목</label> <label><c:if test="${dto!=null}">답변</c:if></label><input
							type="text" name="q_title" class="form-control"
							placeholder="제목을 입력하세요">
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="q_contents" rows="10"
							placeholder="내용을 입력하세요"></textarea>
					</div>



					<div class="form-group">
						<label>첨부파일</label> <input type="file" name="filename">
					</div>


					<input type="button" class="btn btn-primary" id="btnSave"
						value="등록" /> <input type=button class="btn btn-danger"
						value="취소" OnClick="javascript:history.back(-1)">

					<!-- when it is reply form -->
					<c:if test="${dto!=null}">
						<input type="hidden" name="q_num" id="num" value="${dto.q_num}" />
						<input type="hidden" name="currentPage" id="currentPage"
							value="${currentPage}" />
						<input type="hidden" name="qr_num" value="${dto.qr_num}" />
						<input type="hidden" name="qr_step" value="${dto.qr_step}" />
						<input type="hidden" name="qr_level" value="${dto.qr_level}" />
					</c:if>

				</form>

			</div>
		</div>
	</div>



</body>
</html>










