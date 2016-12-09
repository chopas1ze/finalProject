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
	var currentPage = "${pv.currentPage}";
	var mdto_allow_chk = "${sessionScope.mem.allow_chk}";
	var pub_chk = "${sellreserv[0].p_pub_chk}";
</script>
</head>
<body>
<c:if test="${sessionScope.mem.userchk=='C'}">
<script>
 alert('판매자가 아닙니다.');
 location.href="mypage.do";
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

		<div class="col-md-7 main test">

				<h2 class="page-header">예약리스트</h2>

			<div class="table-reservation">

				<table class="table">
					<thead>
						<tr>
							<th class="text-center">신청인</th>
							<th class="text-center">예약 날짜</th>
							<th class="text-center">예약 시간</th>
							<th class="text-center">예약 인원</th>
							<th class="text-center">할인 쿠폰</th>
							<th class="text-center">수락 여부</th>
						</tr>
					</thead>
					<tbody>
						
							<c:choose>
								<c:when test="${sellreserv[0].reservation[0].res_num!=null}">
									<c:forEach items="${sellreserv}" var="sell">
										<c:forEach items="${sell.reservation}" var="sellres">
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
												<c:when test="${sellres.c_num==0}">
													<td class="text-center">미사용</td>
												</c:when>
												<c:otherwise>
													<td class="text-center"><c:out
															value="${sellres.coupon.c_contents}" /></td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${sellres.res_sellcheck=='Y'}">
													<td class="text-center">예약중</td>
												</c:when>
												<c:when test="${sellres.res_sellcheck=='C'}">
													<td class="text-center">예약취소</td>
												</c:when>
												<c:otherwise>
													<td class="text-center"><input type="hidden"
														value="${sellres.c_num}" id="reserv_cnum">
														<button id="allsellallow_btn" value="${sellres.res_num}">수락</button>
														<button id="allsellcanncle_btn" value="${sellres.res_num}">거부</button>
													</td>
												</c:otherwise>
											</c:choose>
											</tr>
										</c:forEach>
									</c:forEach>
								</c:when>
								<c:otherwise>
								<tr>
								<td class="text-center" colspan="6">예약이 없습니다.</td>
								</tr>
								</c:otherwise>
							</c:choose>
						
					</tbody>
				</table>
				<hr/>

	<div class="col-md-2 col-md-offset-5">
	 
				<!-- 이전  -->
				<c:if test="${pv.startPage>1}">
					<c:url var="prePage" value="sellreservlist.do">
						<c:param name="currentPage" value="${pv.startPage-pv.blockPage}" />
						<c:param name="id" value="${mdto[0].id}" />
					</c:url>
					<a href="${prePage}"><c:out value="이전" /></a>
				</c:if>

				<!-- 페이지 출력 시작 -->
				<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
					<c:url var="currPage" value="sellreservlist.do">
						<c:param name="currentPage" value="${i}" />
						<c:param name="id" value="${mdto[0].id}" />
					</c:url>
					<a href="${currPage}"><c:out value="${i}" /></a>
				</c:forEach>
				<!-- 페이지 출력 끝 -->

				<!-- 다음 -->
				<c:if test="${pv.totalPage>pv.endPage}">
					<c:url var="nextPage" value="sellreservlist.do">
						<c:param name="currentPage" value="${pv.startPage+pv.blockPage}" />
						<c:param name="id" value="${mdto[0].id}" />
					</c:url>
					<a href="${nextPage}"><c:out value="다음" /></a>
				</c:if>
				
				</div>
				</div>
				
		</div>
		<!-- End MainMenu -->
	</div>
</div>
</div>
</body>
</html>