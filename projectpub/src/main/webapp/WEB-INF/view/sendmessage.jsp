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
				<span>${sessionScope.mem.id}님의 보낸 쪽지함입니다.</span>
			</div>

			<div class="head_button">

				<button id="senddelete_btn" class="btn btn-default btn-sm">삭제</button>
				<button id="write_btn" class="btn btn-primary btn-sm">쪽지 보내기</button>

			</div>
			<div class="table-message"  style="margin-top: 10px;">

				<table class="table">
					<thead>
						<tr>
						</tr>
						<tr>
							<th width="60px" class="text-center"><input type="checkbox"
								class="allchk" /></th>
							<th width="270px" class="text-center">제목</th>
							<th width="110px" class="text-center">받은 이</th>
							<th width="190px" class="text-center">날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${sendMsg[0].t_num!=null}">
								<c:forEach items="${sendMsg}" var="sm">
									<tr>



										<td width="60px" class="text-center"><input
											type="checkbox" class="chk" value="${sm.t_num}" /></td>
										<c:url var="viewPage" value="sendviewmsg.do">
											<c:param name="t_num" value="${sm.t_num}" />
											<%-- <c:param name="id" value="${memid}" /> --%>
										</c:url>
										<td width="270px" class="text-center"><a
											href="${viewPage}">${sm.t_title}</a></td>
										<td width="110px" class="text-center">${sm.t_resp}</td>
										<td width="190px" class="text-center">${fn:substringAfter(sm.t_date,"-")}</td>
									</tr>

								</c:forEach>

							</c:when>
							<c:otherwise>
								<tr>
									<td></td>
									<td width="620px" class="text-center">받은 쪽지가 없습니다.</td>
								</tr>

							</c:otherwise>
						</c:choose>

					</tbody>
				</table>
				<hr />

				<div class="page_line">

					<c:choose>
						<c:when test="${pv!=null}">

							<!-- 이전  -->
							<c:if test="${pv.startPage>1}">
								<c:url var="prePage" value="sendmessage.do">
									<c:param name="currentPage"
										value="${pv.startPage-pv.blockPage}" />
									<%-- <c:param name="id" value="${memid}" /> --%>
								</c:url>
								<a href="${prePage}"><c:out value="이전" /></a>
							</c:if>

							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
								<c:url var="currPage" value="sendmessage.do">
									<c:param name="currentPage" value="${i}" />
									<%-- <c:param name="id" value="${memid}" /> --%>
								</c:url>
								<a href="${currPage}"><c:out value="${i}" /></a>
							</c:forEach>
							<!-- 페이지 출력 끝 -->

							<!-- 다음 -->
							<c:if test="${pv.totalPage>pv.endPage}">
								<c:url var="nextPage" value="sendmessage.do">
									<c:param name="currentPage"
										value="${pv.startPage+pv.blockPage}" />
									<c:param name="id" value="${memid}" />
								</c:url>
								<a href="${nextPage}"><c:out value="다음" /></a>
							</c:if>
						</c:when>

						<c:otherwise>


							<!-- 이전  -->
							<c:if test="${spv.startPage>1}">
								<c:url var="prePage" value="sendsearchmsg.do">
									<c:param name="currentPage"
										value="${spv.startPage-spv.blockPage}" />
									<c:param name="id" value="${memid}" />
									<c:param name="searchop" value="${searchop}" />
									<c:param name="searchworld" value="${searchworld}" />

								</c:url>
								<a href="${prePage}"><c:out value="이전" /></a>
							</c:if>

							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${spv.startPage}" end="${spv.endPage}">
								<c:url var="currPage" value="sendsearchmsg.do">
									<c:param name="currentPage" value="${i}" />
									<%-- <c:param name="id" value="${memid}" /> --%>
									<c:param name="searchop" value="${searchop}" />
									<c:param name="searchworld" value="${searchworld}" />
								</c:url>
								<a href="${currPage}"><c:out value="${i}" /></a>
							</c:forEach>
							<!-- 페이지 출력 끝 -->

							<!-- 다음 -->
							<c:if test="${spv.totalPage>spv.endPage}">
								<c:url var="nextPage" value="sendsearchmsg.do">
									<c:param name="currentPage"
										value="${spv.startPage+spv.blockPage}" />
								<%-- 	<c:param name="id" value="${memid}" /> --%>
									<c:param name="searchop" value="${searchop}" />
									<c:param name="searchworld" value="${searchworld}" />
								</c:url>
								<a href="${nextPage}"><c:out value="다음" /></a>
							</c:if>

						</c:otherwise>
					</c:choose>



				</div>



				<div class="search_div">
					<form id="sendmesgfrm" method="get" action="sendsearchmsg.do">
						<select id="searchop" name="searchop">
							<option value="subject">제목</option>
							<option value="contents">내용</option>
							<option value="subandcon">제목+내용</option>
							<option value="searchid">ID</option>
						</select> <input type="text" id="searchworld" name="searchworld" /> <input
							type="button" id="sendsearch_btn" value="검색"  class="btn btn-success btn-sm"/> 
							<%-- <input type="hidden" name="id" value="${memid}"> --%>

					</form>
				</div>

			</div>
		</div>
		<!-- End MainMenu -->
	</div>
</body>
</html>