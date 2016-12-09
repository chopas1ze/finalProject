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
	
	function process() {
		$('[name=t_message]').val(
				$('[name=t_message]').val().replace(/\n/gi, '<br/>'));
		return true;
	};//end process()///////////////
	
</script>
</head>
<body>
	<div class="full">
		<div class="sidemenu">
	<h2 class="page-header text-center">쪽지함</h2>
			<ul class="nav nav-sidebar">
						<li class=" text-center"><a href="writemessage.do">쪽지 보내기</a></li>
						<li class="text-center"><a href="gotomessage.do" >받은 쪽지함</a></li>
						<li class="text-center"><a href="sendmessage.do" >보낸 쪽지함</a></li>
					</ul>
		</div>
		<!-- End SideMenu -->

		<div class="mainmenu">

			<div class="head_ment">
				<span>${sessionScope.mem.id}님의 새쪽지쓰기 입니다.</span>
			</div>
			<br/>
			<br/>
			<form class="form-horizontal" id="writefrm" method="POST"  onsubmit="return process()">
			
				<c:choose>
				<c:when test="${t_resp!=null}">
						<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="resp_id">받는 이</label>
					<div class="col-sm-4">
						<input class="form-control" id="resp_id" type="text" name="t_resp" value="${t_resp}" readonly="readonly"/>
					</div>
				</div>
				</c:when>
				<c:otherwise>
					<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="resp_id">받는 이</label>
					<div class="col-sm-4">
						<input class="form-control" id="resp_id" type="text" name="t_resp" />
					</div>
				</div>
				</c:otherwise>
				</c:choose>
				<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="write_title">제목</label>
					<div class="col-sm-8">
						<input class="form-control" id="write_title" type="text" name="t_title">
					</div>
				</div>
				
					<div class="form-group" style="width: 630px">
					<label class="col-sm-2 control-label" for="write_message">내용</label>
					<div class="col-sm-4">
						<textarea rows="10" cols="53" name="t_message" id="write_message"></textarea>
					</div>
				</div>
				
				<div class="writebtndiv">
				<input type="button"  id="writeok_btn" class="btn btn-primary btn-sm" value="보내기">
				<input type="button"  id="writecancle_btn" class="btn btn-danger btn-sm" value="취소">
				</div>
		 	<input type="hidden" name="id" value="${sessionScope.mem.id}"/>
				
			</form>
			
		</div>
		<!-- End MainMenu -->
	</div>
</body>
</html>