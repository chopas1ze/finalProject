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
	var mdto_id = "${sessionScope.mem.id}";
	var mdto_pw = "${sessionScope.mem.pw}";
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




<!-- ??????? -->
		
			<div class="main col-md-7 test">
					<h2 class="page-header">회원정보</h2>
					<form class="form-horizontal" id="frm" method="POST"
						enctype="multipart/form-data">
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputId">ID</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputId" type="text" name="id"
									readonly="readonly" value="${mdto[0].id}">
								<p class="help-block">ID는 변경이 불가능합니다.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPassword" type="password"
									name="pw">
								<p class="help-block">숫자, 특수문자 포함 6자 이상 15자 이하</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
								확인</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputPasswordCheck"
									type="password" placeholder="비밀번호 확인">
								<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputName">이름</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input class="form-control" id="inputName" type="tel"
										name="name" readonly="readonly" value="${mdto[0].name}">
								</div>
								<p class="help-block">이름은 변경이 불가능합니다.</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
							<div class="col-sm-6">
								<div class="input-group">
									<input type="tel" class="form-control" id="inputNumber"
										name="phone" value="${mdto[0].phone}" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputEmail">E-Mail</label>
							<div class="col-sm-6">
								<input class="form-control" id="inputEmail" type="text"
									name="email" value="${mdto[0].email}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="inputFace">프로필
								사진</label>
							<div class="col-sm-6">
								<div class="input-group">
									<div id="face_div">
										<c:choose>
											<c:when test="${mdto[0].face!=null}">
												<img id="face_show" src="\projectpub\temp//${mdto[0].face}"
													width="298px" height="147px" />
											</c:when>
											<c:otherwise>
												<img id="face_show" src="images\nopicture.jpg"
													width="296px" height="145px" />
											</c:otherwise>
										</c:choose>
									</div>
									<input class="form-control" id="inputFace" type="file"
										name="filename">
								</div>
							</div>
						</div>
						<input type="hidden" name="email_agree"
							value="${mdto[0].email_agree}" /> <input type="hidden"
							name="sex" value="${mdto[0].sex}" /> <input type="hidden"
							name="birth" value="${mdto[0].birth}" /> <input type="hidden"
							name="userchk" value="${mdto[0].userchk}" /> <input
							type="hidden" name="allow_chk" value="${mdto[0].allow_chk}" /> <input
							type="hidden" name="login_time" value="${mdto[0].login_time}" />
						<input type="hidden" name="saupja_num"
							value="${mdto[0].saupja_num}" />
						<div class="form-group">
							<div class="col-sm-12 text-center">
								<button class="btn btn-primary" type="button" id="uptokbtn">
									수정</button>
								<button class="btn btn-danger" type="button" id="uptcanclebtn">
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