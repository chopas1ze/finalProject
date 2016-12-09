<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/mine.js"></script>
<script type="text/javascript">
 var mdto_allow_chk = "${sessionScope.mem.allow_chk}";
 var pub_chk = "${sellreserv[0].p_pub_chk}";
</script>
</head>
<body>
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

		<h2 class="page-header">회원탈퇴</h2>

			<form class="form-horizontal" id="leaveus" method="GET">
				<div class="form-group">
					<label class="col-sm-3 control-label" for="delId">ID</label>
					<div class="col-sm-6">
					<div class="input-group">
						<input class="form-control" id="delId" type="text" name="id"
							readonly="readonly" value="${mdto[0].id}">
							</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="delName">이름</label>
					<div class="col-sm-6">
					<div class="input-group">
						<input class="form-control" id="delName" type="text"
							readonly="readonly" value="${mdto[0].name}">
							</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${mdto[0].sex=='m'}">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="delSex">성별</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="delSex" type="text"
										readonly="readonly" value="남자">
								</div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="delSex">성별</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="delSex" type="text"
										readonly="readonly" value="여자">
								</div>
							</div>
						</div>

					</c:otherwise>
				</c:choose>

				<div class="form-group">
					<label class="col-sm-3 control-label" for="delNumber">휴대폰번호</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="tel" class="form-control" id="delNumber"
								readonly="readonly" value="${mdto[0].phone}" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="delEmail">E-Mail</label>
					<div class="col-sm-6">
					<div class="input-group">
						<input class="form-control" id="delEmail" type="text"
							readonly="readonly" value="${mdto[0].email}">
							</div>
					</div>
				</div>
				<c:if test="${sellreserv[0].p_title!=null}">
					<div class="form-group">
						<label class="col-sm-3 control-label" for="delPub">Pub 이름</label>
								<div class="col-sm-6">
									<input class="form-control" id="delPub" type="text"
										readonly="readonly" value="${sellreserv[0].p_title}">
							</div>
					</div>
				</c:if>
				
				<div class="form-group" style="margin-top: 50px;">
					<div class="col-sm-12 text-center">
					<p class="help-block text-center" >회원 탈퇴시 복구가 불가능합니다.</p>
						<button class="btn btn-primary" type="button" id="delmembtn">
							탈퇴하기</button>
						<button class="btn btn-danger" type="button" id="delmemcanclebtn">
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