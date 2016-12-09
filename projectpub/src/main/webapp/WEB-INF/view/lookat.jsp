<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
.quick {
	position: fixed;
	width: 150px;
	height: 1000px;
	top: 200px;
	right: 50%;
	margin-right: -800px;
}

.section {
	padding: 20px 0;
}

#rec-con {
	height: 850px;
}
</style>



<title>Carousel Template for Bootstrap</title>

<script src="js/aja.js"></script>
<script type="text/javascript">
	function hitEnterKey(e) {
		if (e.keyCode == 13) {
			searchfn();
		}/* else{
																			   e.keyCode == 0;
																			  return;
																			  } */
	}

	function searchfn() {
		$.ajax({
			type : 'GET',
			dataType : 'json',
			url : 'search.do?search=' + $('#search-con').val(),
			success : viewMessage2,
		});
	};
</script>

<style>
</style>

</head>
<body>
	<div class="quick">
		<c:if test="${sessionScope.mem!=null}">
			<c:if test="${fn:length(quick)!=0}">
				<p style="font-size: 17px; font-style: oblique;">최근 본 pub 페이지</p>
				<!-- 수정함 -->
				<c:forEach var="bar" items="${quick}">
					<div id="quick"
						style="border: 1px solid black; text-align: center;">
						<a class="plus"><input id="plus_in" type="hidden"
							value="${bar.p_num}" /><img style="width: 150px; height: 150px;"
							src="\projectpub\temp//${bar.p_mupload}" alt="사진1" /></a> <a>Pub집
							이름 : ${bar.p_title}</br>
						</a> <a>Pub집 주소 : ${bar.p_address}</br></a> <a>최대인원: ${bar.p_maxpeople}</a>
					</div>
				</c:forEach>
			</c:if>
		</c:if>
	</div>
	<!-- 랭킹 1등 -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-6" style="height: 500px; padding-left: 80px;">
					<img src="images/lookpic.png" class="text-center">
				</div>


				<div class="col-md-6" style="padding: 0;">
					<c:choose>
						<c:when test="${fn:length(aList)>'0'}">
							<a class="plus"><input id="plus_in" type="hidden"
								value="${aList[0].p_num}" /><img
								style="width: 100%; height: 500px;"
								src="\projectpub\temp//${aList[0].p_mupload}"
								class="img-responsive col-md-12"></a>
						</c:when>
						<c:otherwise>
							<img
								src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
								class="img-responsive">
						</c:otherwise>

					</c:choose>


				</div>
			</div>
		</div>
	</div>

	<!-- 2~5등 -->
	<div class="section">
		<div class="container">
			<div class="row">
				<c:choose>
					<c:when test="${fn:length(aList)>'0'}">
						<c:forEach var="i" begin="1" end="${fn:length(aList)-1}">
							<div class="col-md-3">
								<a class="plus"><input id="plus_in" type="hidden"
									value="${aList[i].p_num}" /><img
									src="\projectpub\temp//${aList[i].p_mupload}"
									style="width: 100%; height: 210px;" alt="사진${i}" /></a>
								<hr />
								<h3 style="font-size: 15px; text-align: left;"><strong>TOP.${i+1}</strong></h3>
								<p style="font-size: 15px; text-align: left;">${aList[i].p_title}</p>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<img
							src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
							class="img-responsive">
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</div>


	<!-- search tool 검색-->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">Search</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-offset-3 col-md-6">
					<form role="form" onsubmit="return false;">
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Enter keyword" id="search-con"
									onKeypress="hitEnterKey(event)"> <span
									class="input-group-btn"> <a class="btn btn-success"
									type="submit" id="serbtn">search</a>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end of search tool -->

	<!-- list of all pub -->
	<div class="section" style="height: 1000px;">
		<div class="container" id="contain">
			<div class="row" id="rec-con">

				<c:forEach var="pub" items="${aList2}">
					<div class="col-md-6">
						<a class="plus"> <input id="plus_in" type="hidden"
							value="${pub.p_num}" /> <img class="col-md-12"
							src="\projectpub\temp//${pub.p_mupload}" alt="사진1"
							style="width: 100%; height: 320px;" /></a>

						<div class="col-md-8"
							style="text-align: center; margin-top: 10px;">
							<p style="font-size: 15px; font-weight: 500;">Pub 이름
								:${pub.p_title}</p>
							<p style="font-size: 15px; font-weight: 500;">Pub
								주소:${pub.p_address}</p>
							<p style="font-size: 15px; font-weight: 500;">최대인원:${pub.p_maxpeople}명</p>
						</div>
						<div class="col-md-4"
							style="text-align: center; margin-top: 10px;">
							<div class="${pub.p_num}" style="margin-bottom: 20px;"></div>
							<script>
								star("${pub.star.s_stars}", "${pub.p_num}")
							</script>
							<p style="font-size: 15px; font-weight: 500;">${pub.star.s_stars}점</p>
						</div>
					</div>
				</c:forEach>

			</div>
			<nav class="col-md-4 
   col-md-offset-4 text-center">
				<ul class="pagination ">

					<!-- 이전 출력 -->
					<c:if test="${pv.startPage>1}">
						<a href="notice.do?currentPage=${pv.startPage-pv.blockPage}"><span
							aria-hidden="true">&laquo;</span></a>
					</c:if>
					<!-- 이전 끝 -->

					<li id="rec-num"><c:forEach var="i" begin="${pv.startPage}"
							end="${pv.endPage}">
							<a class="currentPage"><c:out value="${i}" /></a>
						</c:forEach></li>

					<!-- href="lookat2.do?currentPage=${pv.startPage+pv.blockPage}" -->
					<c:if test="${pv.totalPage>pv.endPage}">
						<a class="nextpage" id="${pv.startPage+pv.blockPage}"><span
							aria-hidden="true">&laquo;</span></a>
					</c:if>
					<!-- 다음 끝 -->

				</ul>
			</nav>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
	</div>
</body>
</html>
