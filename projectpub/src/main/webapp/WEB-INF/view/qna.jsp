<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/notice.css">
<title>Q&A</title>

<script type="text/javascript">
	function sumbitfunc() {
		$('.frms').submit();
	}
</script>
</head>
<body>



	<!--리스트 출력  -->
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
								<td>${dto.q_num}</td>
								<td><c:url var="q_contents" value="qnaview.do">
										<c:choose>
											<c:when test="${pv==null }">
												<c:param name="currentPage" value="${spv.currentPage}" />
											</c:when>
											<c:otherwise>
												<c:param name="currentPage" value="${pv.currentPage}" />
											</c:otherwise>
										</c:choose>
										<c:param name="num" value="${dto.q_num}" />
									</c:url> <c:if test="${dto.qr_level!=0}">
										<img src="images/level.gif" width="${20*dto.qr_level}"
											height="15">
										<img src="images/re.gif">
									</c:if> <a href="${q_contents}">${dto.q_title}</a></td>
								<td>${dto.id}</td>
								<td>${dto.q_date}</td>
								<td>${dto.q_viewcnt}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				
				<form class="col-md-2 col-md-offset-10 text-right" id="frm" name="frm"
					method="get" action="qnawrite.do">
					<c:if test="${sessionScope.mem!=null}">
						<input type="submit" class="btn btn-info" id="btnWrite"
							value="글쓰기" />
					</c:if>
				</form>
				
				
				
				
			</div>


		</div>


		<!--리스트 출력 끝  -->


		<!--write form -->
<%-- 
		<div class="row">
			<div class="col-md-12">
				<form class="col-md-2 col-md-offset-10 " id="frm" name="frm"
					method="get" action="qnawrite.do">
					<c:if test="${sessionScope.mem!=null}">
						<input type="submit" class="btn btn-info" id="btnWrite"
							value="글쓰기" />
					</c:if>
				</form>
			</div>
		</div> --%>


		<!-- end of write form -->







		<!-- search tool -->


		<div class="row">
			<div class="col-md-offset-3 col-md-6 text-center">
				<form role="form" name="frms" class="frms form-inline"
					action="qna2.do">
					<div class="form-group">

						<select id="word" name="word" class="form-control">
							<option value="titlecontents">제목+내용</option>
							<option value="searchid">ID</option>
						</select>
					</div>


					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Enter keyword" name="search" id="search"> <span
								class="input-group-btn"> <a class="btn btn-success"
								id="search_btn" type="submit" onclick="sumbitfunc();">search</a>
							</span>
						</div>
					</div>
				</form>
			</div>
		</div>


		<!-- end of search tool -->














		<!-- pagenation -->
		<div class="row">
			<nav class="col-md-4 
	col-md-offset-4 text-center"> <c:choose>
				<c:when test="${pv!=null}">

					<ul class="pagination ">


						<!-- prev -->
						<li><a href="qna.do?currentPage=${pv.startPage-pv.blockPage}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<!-- end of prev -->

						<!-- total page -->
						<c:forEach begin="${pv.startPage }" end="${pv.endPage }" step="1"
							var="i">
							<c:url var="currPage" value="qna.do">
								<c:param name="currentPage" value="${i}" />
							</c:url>

							<li><a href="${currPage }"> <c:out value="${i}" /></a></li>

						</c:forEach>
						<!-- end of page -->

						<li><a href="qna.do?currentPage=${pv.startPage+pv.blockPage}"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>

				</c:when>

				<c:otherwise>
					<ul class="pagination ">

						<!-- prev -->
						<li><c:url var="prePage" value="qna2.do">
								<c:param name="currentPage"
									value="${spv.startPage-spv.blockPage}" />

								<c:param name="word" value="${word}" />
								<c:param name="search" value="${search}" />

							</c:url> <a href="${prePage}" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<!-- end of prev -->


						<!-- 페이지 출력 시작 -->
						<c:forEach var="i" begin="${spv.startPage}" end="${spv.endPage}">
							<c:url var="currPage" value="qna2.do">
								<c:param name="currentPage" value="${i}" />

								<c:param name="word" value="${word}" />
								<c:param name="search" value="${search}" />
							</c:url>

							<li><a href="${currPage }"> <c:out value="${i}" /></a></li>


						</c:forEach>
						<!-- 페이지 출력 끝 -->





						<!-- end of page -->

						<li><c:url var="nextPage" value="qna2.do">
								<c:param name="currentPage"
									value="${spv.startPage+spv.blockPage}" />
								<c:param name="word" value="${word}" />
								<c:param name="search" value="${search}" />
							</c:url> <a href="${nextPage}" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>

					</ul>

				</c:otherwise>
			</c:choose> </nav>

		</div>

	</div>




</body>
</html>