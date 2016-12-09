<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>event</title>
<link rel="stylesheet" type="text/css" href="css/accordionImageMenu.css" />

<style type="text/css">
.section{

}


</style>
</head>
<body>

	<hr />
	<div class="section" style="margin-bottom:90px;">
		<div class="container">
			<div class="row">
				<c:forEach var="dto" items="${aList}">

					<c:url var="e_title" value="eview.do">
						<c:param name="currentPage" value="${pv.currentPage}" />
						<c:param name="num" value="${dto.e_num}" />
						<c:param name="id" value="${sessionScope.mem.id}" />
					</c:url>



					<div class="col-md-4">
						<img src="\projectpub\temp//${dto.e_upload}"
							class="img-responsive" style="height: 300px;" />
						
						<H3><a href="${e_title}" style="text-decoration:none">${dto.e_title}</a></H3>
						<p>${dto.e_date}</p>
					</div>

				</c:forEach>
			</div>
			<div class="row">
				<!-- 관리자 글쓰기 -->
				<form id="frm" name="frm" method="get" action="ewrite.do">
					<c:if test="${sessionScope.mem.userchk=='A'}">
						<input class="btn btn-primary" type="submit" id="btnWrite"
							value="글쓰기" />
					</c:if>
				</form>
				<!-- 관리자 글쓰기 끝 -->

			</div>
		</div>
	</div>

</body>
</html>