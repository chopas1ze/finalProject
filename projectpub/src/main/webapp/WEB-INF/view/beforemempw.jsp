<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 확인</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/mine.js"></script>
<script type="text/javascript">
var mdto_pw="${sessionScope.mem.pw}";
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
				<!-- End SideMenu -->

				<div class="main col-md-7 test">

					<!-- 	<div class="page-header"></div> -->
					<div class="row">
							<h2 class="page-header">비밀번호 확인</h2>
						<form class="form-inline" id="pwfrm" method="POST"
							action="mempwchk.do" style="margin-top:300px">

							<div class="form-group col-md-offset-4">

								<label class="control-label" for="findPassword">비밀번호</label> <input
									class="form-control" id="findPassword" type="password"
									placeholder="비밀번호를 입력해주세요">


							</div>


							<div class="form-group col-md-4 col-md-offset-5" style="margin-top:30px">

								<button class="btn btn-primary" type="button" id="pwokbtn">
									확인</button>
								<button class="btn btn-danger" type="button" id="pwcanclebtn">
									취소</button>

							</div>

							<input type="hidden" name="id" value="${mdto[0].id}" />

						</form>
					</div>
				</div>
				<!-- End MainMenu -->
			</div>
		</div>
	</div>
</body>
</html>