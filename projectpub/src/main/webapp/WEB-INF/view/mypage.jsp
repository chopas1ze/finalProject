<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>마이페이지</title>
<!-- main mypage -->
<link href="css/dashboard.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/mine.js"></script>

<!-- 종선이형 코드 -->
<script type="text/javascript">
	var mdto_id = "${sessionScope.mem.id}";
	var mdto_allow_chk = "${sessionScope.mem.allow_chk}";
	var pub_chk = "${sellreserv[0].p_pub_chk}";
</script>

</head>
<!-- end of head -->

<body>
<c:if test="${sessionScope.mem.userchk=='A'}">
		<script>
			alert('관리자 페이지로 이동합니다.');
			location.href = "manager.do";
		</script>
	</c:if>
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

				<!-- main -->



				<div class="col-md-7 main test">
					<h2 class="page-header">Mypage</h2>
					<div class="row placeholders">


						<c:choose>
							<c:when test="${mdto[0].face!=null}">
								<img id="big_face_pic" src="\projectpub\temp//${mdto[0].face}" style="width: 300px; height: 300px;"
									class="col-md-6" />
							</c:when>
							<c:otherwise>
								<img id="big_face_pic" src="images\nopicture.png" style="width: 300px; height: 300px;"
									class="col-md-6" />
							</c:otherwise>
						</c:choose>


						<div class="col-xs-6 col-sm-3 col-md-3">
							<dl>

								<dt>ID</dt>
								<dd>
									<c:out value="${mdto[0].id}" />
								</dd>

								<dt>이름</dt>
								<dd>
									<c:out value="${mdto[0].name}" />
								</dd>

								<c:choose>
									<c:when test="${mdto[0].sex=='m'}">
										<dt>성별</dt>
										<dd>남</dd>
									</c:when>
									<c:otherwise>
										<dt>성별</dt>
										<dd>여</dd>
									</c:otherwise>
								</c:choose>

								<dt>연락처</dt>
								<dd>
									<c:out value="${mdto[0].phone}" />
								</dd>


							</dl>
						</div>

						<div class="col-xs-6 col-sm-3 col-md-3">
							<dl>
								<dt>E-mail</dt>
								<dd>
									<c:out value="${mdto[0].email}" />
								</dd>

								<c:choose>
									<c:when test="${mdto[0].userchk=='C'}">
										<!-- 구매자 -->
										<dt>회원등급</dt>
										<dd>구매자</dd>
									</c:when>

									<c:when test="${mdto[0].userchk=='S'}">
										<!--판매자 -->
										<dt>회원등급</dt>
										<dd>판매자</dd>
									</c:when>
								</c:choose>

								<dt>마지막 로그인</dt>
								<dd>
									<c:out value="${mdto[0].login_time}" />
								</dd>
							</dl>
						</div>

					</div>
					<!-- End Profile_Intro -->

					<div class="row">

						<div class="col-md-12"></div>
						<c:choose>

							<c:when test="${mdto[0].userchk=='C'}">
								<h2 class="sub-header">PUB 예약 현황</h2>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr class="info">
												<th class="text-center">PUB 이름</th>
												<th class="text-center">예약 날짜</th>
												<th class="text-center">예약 시간</th>
												<th class="text-center">예약 인원</th>
												<th class="text-center">처리상태</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>

												<c:when test="${cusreserv[0].reservation[0].res_num!=null}">
													<c:forEach items="${cusreserv}" var="cus">
														<c:forEach items="${cus.reservation}" var="res">
															<tr>
																<td class="text-center"><c:out
																		value="${res.pub.p_title}" /></td>
																<td class="text-center"><c:out
																		value="${res.res_date}" /></td>
																<td class="text-center"><c:out
																		value="${res.res_time}" /></td>
																<td class="text-center"><c:out
																		value="${res.res_people}" />명</td>
																<c:choose>
																	<c:when test="${res.res_sellcheck=='N'}">
																		<td class="text-center">대기중
																			<button id="cuscancle_btn" value="${res.res_num}">취소</button>
																		</td>
																	</c:when>
																	<c:when test="${res.res_sellcheck=='C'}">
																		<td class="text-center">예약불가
																			<button id="cuscancle_btn" value="${res.res_num}">취소</button>
																		</td>
																	</c:when>
																	<c:otherwise>
																		<td class="text-center">예약성공
																			<button id="cuscancle_btn" value="${res.res_num}">취소</button>
																		</td>
																	</c:otherwise>
																</c:choose>
															</tr>
														</c:forEach>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<tr>
														<td class="text-center" colspan="6">예약한 PUB이 없습니다.</td>
													<tr>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>

								<h2 class="sub-header">쿠폰</h2>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr class="success">
												<th class="text-center">쿠폰이름</th>
												<th class="text-center">남은기간</th>
												<th class="text-center">사용여부</th>
												<th class="text-center">사용처</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${mdto[0].coupon[0].c_num!=null}">
													<c:forEach items="${mdto}" var="md">
														<c:forEach items="${md.coupon}" var="cou">
															<tr>
																<td class="text-center"><c:out
																		value="${cou.c_coupon}" /></td>
																<td class="text-center">~ <c:out
																		value="${cou.c_date}" />까지
																</td>
																<c:if test="${cou.c_use=='N'}">
																	<td class="text-center">미사용</td>
																	<td class="text-center">없음</td>
																</c:if>
																<c:if test="${cou.c_use=='Y'}">
																	<td class="text-center">사용됨</td>
																	<td class="text-center"><c:out
																			value="${cou.reservation.pub.p_title}" /></td>
																</c:if>
															</tr>
														</c:forEach>
													</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td class="text-center" colspan="6">사용가능한 쿠폰이 없습니다.</td>
														</tr>
													</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</c:when>


							<c:when test="${mdto[0].userchk=='S'}">

								<h2 class="sub-header">예약 현황</h2>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr class="info">
												<th class="text-center">신청인</th>
												<th class="text-center">예약 날짜</th>
												<th class="text-center">예약 시간</th>
												<th class="text-center">예약 인원</th>
												<th class="text-center">쿠폰 유무</th>
												<th class="text-center">수락 여부</th>
											</tr>
										</thead>
										<tbody>

											<c:choose>
												<c:when
													test="${sellreserv[0].p_pub_chk=='N' || sellreserv[0].p_pub_chk==null || sellreserv[0].p_pub_chk=='R'}">
													<td class="text-center" colspan="6">PUB이 등록되어 있지 않습니다.</td>
												</c:when>

												<c:when
													test="${sellreserv[0].p_pub_chk=='Y' && sellreserv[0].reservation[0].res_num!=null}">
													<c:forEach items="${sellreserv}" var="sell">
														<c:forEach items="${sell.reservation}" var="sellres">
															<c:if test="${sellres.res_sellcheck=='N'}">
																<tr>
																	<td class="text-center"><c:out
																			value="${sellres.members.name}" /></td>
																	<td class="text-center"><c:out
																			value="${sellres.res_date}" /></td>
																	<td class="text-center"><c:out
																			value="${sellres.res_time}" /></td>
																	<td class="text-center"><c:out
																			value="${sellres.res_people}" />명</td>
																	<c:choose>
																		<c:when test="${sellres.c_num!=0}">
																			<td class="text-center"><c:out
																					value="${sellres.coupon.c_contents}" /></td>
																		</c:when>
																		<c:otherwise>
																			<td class="text-center">미사용</td>
																		</c:otherwise>
																	</c:choose>

																	<td class="text-center"><input type="hidden"
																		value="${sellres.c_num}" id="reserv_cnum">
																		<button id="sellallow_btn" type="button"
																			class="btn btn-primary" value="${sellres.res_num}">수락</button>
																		<button id="sellcanncle_btn" type="button"
																			class="btn btn-danger" value="${sellres.res_num}">거부</button></td>
																</tr>
															</c:if>
														</c:forEach>
													</c:forEach>
												</c:when>													
												<c:otherwise>
												<tr>
														<td class="text-center" colspan="6">예약없음</td>
													<tr>
												</c:otherwise>
											</c:choose>

										</tbody>
									</table>
								</div>

								<h2 class="sub-header">쿠폰</h2>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr class="success">
												<th class="text-center">쿠폰이름</th>
												<th class="text-center">남은기간</th>
												<th class="text-center">사용여부</th>
												<th class="text-center">사용처</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>

												<c:when test="${mdto[0].coupon[0].c_num!=null}">
													<c:forEach items="${mdto}" var="md">
														<c:forEach items="${md.coupon}" var="cou">
															<tr>
																<td class="text-center"><c:out
																		value="${cou.c_coupon}" /></td>
																<td class="text-center">~ <c:out
																		value="${cou.c_date}" />까지
																</td>
																<c:if test="${cou.c_use=='N'}">
																	<td class="text-center">미사용</td>
																	<td class="text-center">없음</td>
																</c:if>
																<c:if test="${cou.c_use=='Y'}">
																	<td class="text-center">사용됨</td>
																	<td class="text-center"><c:out
																			value="${cou.reservation.pub.p_title}" /></td>
																</c:if>
															</tr>
														</c:forEach>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<tr>
														<td class="text-center" colspan="6">사용가능한 쿠폰이 없습니다.</td>
													</tr>
												</c:otherwise>

											</c:choose>
										</tbody>
									</table>

								</div>
							</c:when>
						</c:choose>

					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
