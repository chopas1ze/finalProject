<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice</title>

<link rel="stylesheet" type="text/css" href="css/notice.css?ver=1">


</head>
<body>

	<!-- list -->

	<div class="continer">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div>
					<table class="table table-hover table-striped">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>


						<c:forEach var="dto" items="${aList}">

							<tr>
								<td>${dto.n_num}</td>
								<td><c:url var="n_title" value="noview.do">
										<c:param name="currentPage" value="${pv.currentPage}" />
										<c:param name="num" value="${dto.n_num}" />
									</c:url><a href="${n_title}">${dto.n_title}</a></td>
								<td>${dto.id}</td>
								<td>${dto.n_date}</td>
								<td>${dto.n_viewcnt}</td>
							</tr>

						</c:forEach>


					</table>
				</div>
				<!-- admin writing -->


				<form class="col-md-2 col-md-offset-10 text-right" id="frm"
					name="frm" method="get" action="nowrite.do">
					<c:if test="${sessionScope.mem.userchk=='A'}">
						<input type="submit" class="btn btn-success" id="btnWrite"
							value="글쓰기" />
					</c:if>
				</form>
				<!-- 관리자 글쓰기 끝 -->

			</div>


		</div>











		<!-- pagenation -->
		<div class="row">
			<nav class="col-md-4 
	col-md-offset-4 text-center">
			<ul class="pagination ">

				<li><a
					href="notice.do?currentPage=${pv.startPage-pv.blockPage}"
					aria-label="Previous"><span aria-hidden="true">&laquo;</span> </a></li>

				<c:forEach begin="${pv.startPage }" end="${pv.endPage }" step="1"
					var="i">
					<c:url var="currPage" value="notice.do">
						<c:param name="currentPage" value="${i}" />
					</c:url>

					<li><a href="${currPage }"> <c:out value="${i}" /></a></li>

				</c:forEach>


				<li><a
					href="notice.do?currentPage=${pv.startPage+pv.blockPage}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
			</nav>
		</div>
	</div>





</body>
</html>