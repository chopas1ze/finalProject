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

		$('#btnList').on('click', function() {
			$('#frm').attr('action', 'notice.do');
			$('#frm').submit();
			// $('#frm').attr('action','list.sb').submit();
		});

		$('#btnSave').on('click', function() {
			$('#frm').attr('action', 'nowrite.do').submit();
		});
	});

	function process() {
		//document.frm.content.value = 
		// document.frm.content.value.replace( /\n/gi, '<br/>');
		$('[name=n_contents]').val(
				$('[name=n_contents]').val().replace(/\n/gi, '<br/>'));

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
							type="text" name="n_title" class="form-control"
							placeholder="제목을 입력하세요">
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="n_contents" rows="10"
							placeholder="내용을 입력하세요"></textarea>
					</div>

					<input type="button" class="btn btn-primary" id="btnSave"
						value="등록" /> <input type=button class="btn btn-danger"
						value="취소" OnClick="javascript:history.back(-1)">

				</form>

			</div>
		</div>
	</div>




</body>
</html>










