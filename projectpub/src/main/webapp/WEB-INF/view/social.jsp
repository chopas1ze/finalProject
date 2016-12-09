<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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



<title>Carousel Template for Bootstrap</title>

<link rel="stylesheet" type="text/css" href="css/cho3.css?ver=2"
	media="all" />

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="js/social.js?ver=2" type="text/javascript"></script>

<style>
.block {
	border-color: #bdc3c7;
	background-color: #FAFAFA;
	box-shadow: 10px 10px 10px silver;
	-moz-box-shadow: 10px 10px 10px silver;
	-webkit-box-shadow: 10px 10px 10px silver;
}

.nopadding {
	padding-left: 0px;
}

.reply .btnbox {
	width: 500px;
}

.review {
	display: none;
}

.replyBtn {
	margin: 10px;
}
<%-----------------------------------%>
</style>

<script type="text/javascript">
	var session_id = "${sessionScope.mem.id}";
	var endRow = "${pdto.endRow}";
	var totalRow = "${pdto.totalRow}";
	var currentRow = 1;

	//리플 리스트호출
	function replyviewMessage(res) {

		if (res.length == 0) {
			location.href = "social.do";
		} else {
			$('#reply_' + res[0].s_num).empty();
			for (var i = 0; i < res.length; i++) {
				$('#reply_' + res[i].s_num)
						.append(
								'<div id="reply_in'+res[i].rs_num+'" class="recon"><div id="reply_id">'
										+ res[i].id
										+ '</div><div id="reply_content">'
										+ res[i].rs_content
										+ '</div><div id="reply_btn'+res[i].rs_num+'"><input id="reply_num" type="hidden" value="'+res[i].rs_num+'" /></div></div>');
				if (res[i].id == session_id) {
					$('#reply_btn' + res[i].rs_num).append(
							'<a class="updebtn">삭제</a>');
				}
			}
			$('.re_content').val('');
		}
	}
	function niceviewMessage(res) {

		if ($('#btnbtn' + res.cc.s_num).children('.reviewbtn').text() == "댓글보기") {

			if (res.idchk == null) {
				alert('좋아요♥♥♥♥♥')
				$('#btnbtn' + res.cc.s_num).empty();
				$('#btnbtn' + res.cc.s_num)
						.append(
								'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
										+ res.cc.nice.s_nice
										+ '</button><button type="button" class="reviewbtn btn btn-primary">댓글보기</button>');
				if (res.cc.id == session_id) {
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<button class="sodelbtn btn btn-primary">삭제</button>')
				}
			} else {
				if (res.bb == null) {
					alert('좋아요 취소')
					$('#btnbtn' + res.cc.s_num).empty();
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
											+ res.cc.nice.s_nice
											+ '</button><button type="button" class="reviewbtn btn btn-primary">댓글보기</button>');
					if (res.cc.id == session_id) {
						$('#btnbtn' + res.cc.s_num)
								.append(
										'<button class="sodelbtn btn btn-primary">삭제</button>')
					}
				} else {
					alert('좋아요 취소')
					$('#btnbtn' + res.cc.s_num).empty();
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ</button><button type="button" class="reviewbtn btn btn-primary">댓글보기</button>');
					if (res.cc.id == session_id) {
						$('#btnbtn' + res.cc.s_num)
								.append(
										'<button class="sodelbtn btn btn-primary">삭제</button>')
					}
				}
			}
		} else {
			if (res.idchk == null) {
				alert('좋아요♥♥♥♥♥')
				$('#btnbtn' + res.cc.s_num).empty();
				$('#btnbtn' + res.cc.s_num)
						.append(
								'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
										+ res.cc.nice.s_nice
										+ '</button><button type="button" class="reviewbtn btn btn-primary">댓글닫기</button>');
				if (res.cc.id == session_id) {
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<button class="sodelbtn btn btn-primary">삭제</button>')
				}
			} else {
				if (res.bb == null) {
					alert('좋아요 취소')
					$('#btnbtn' + res.cc.s_num).empty();
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
											+ res.cc.nice.s_nice
											+ '</button><button type="button" class="reviewbtn btn btn-primary">댓글닫기</button>');
					if (res.cc.id == session_id) {
						$('#btnbtn' + res.cc.s_num)
								.append(
										'<button class="sodelbtn btn btn-primary">삭제</button>')
					}
				} else {
					alert('좋아요 취소')
					$('#btnbtn' + res.cc.s_num).empty();
					$('#btnbtn' + res.cc.s_num)
							.append(
									'<input id="social_snum" type="hidden" value="'+res.cc.s_num+'"/><button type="button" id="nicebtn'+res.s_num+'" class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ</button><button type="button" class="reviewbtn btn btn-primary">댓글닫기</button>');
					if (res.cc.id == session_id) {
						$('#btnbtn' + res.cc.s_num)
								.append(
										'<button class="sodelbtn btn btn-primary">삭제</button>')
					}
				}
			}
		}

	}
	function viewView(data) {
		endRow = data.pdto.endRow;
		totalRow = data.pdto.totalRow;
		// 		console.log(data.so[i].nice.s_nice);

		var niceC = 0;
		for (var i = 0; i < data.so.length; i++) {

			$('#aaaa')
					.append(
							'<div id ="border'
									+ data.so[i].s_num
									+ '" class="panel panel-default block">')
			$("#border" + data.so[i].s_num)
					.append(
							'<div id="bodys'+data.so[i].s_num+'" class="panel-body"><div class="row"><div class="col-md-12"><img src="\\projectpub\\temp//'
									+ data.so[i].mem.face
									+ '"class="img-responsive img-circle col-md-3">'
									+ '<h4 class="col-md-5" id="reply_id">'
									+ data.so[i].id
									+ '</h4>'
									+ '<div class="com-md-2 com-md-offset-2 text-right">'
									+ data.so[i].s_date
									+ '</div>'
									+ '</div></div><div class="row"><p id="contentbb'+data.so[i].s_num+'"class="col-md-12">'
									+ data.so[i].s_content + '</p>' + '</div>');
			if (data.so[i].s_upload != null) {
				$("#bodys" + data.so[i].s_num)
						.append(
								'<div class="row"><div class="col-md-12"><img alt="" src="\\projectpub\\temp//'
										+ data.so[i].s_upload
										+ '"class="img-responsive"></div></div>');
			}

			if (data.so[i].nice == null) {
				niceC = 0;
			} else {
				niceC = data.so[i].nice.s_nice;
			}
			$("#bodys" + data.so[i].s_num)
					.append(
							'<div class="row"><div id="btnbtn'+data.so[i].s_num+'" class="col-md-12"><input id="social_snum" type="hidden" value="'
									+ data.so[i].s_num
									+ '" /><button type="button" id="nicebtn'
									+ data.so[i].s_num
									+ '"class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
									+ niceC + '</button></div></div>');
			$("#btnbtn" + data.so[i].s_num)
					.append(
							'<button type="button" class="reviewbtn btn btn-primary">댓글보기</button>');
			$('#bodys' + data.so[i].s_num)
					.append(
							'<div id="replyList'
					+ data.so[i].s_num
					+ '"class="review row"><div id="reply'+data.so[i].s_num+'"class="reply col-md-12"><div id="reply_'+data.so[i].s_num+'"></div>');
			if (data.so[i].id == session_id) {
				$("#btnbtn" + data.so[i].s_num).append(
						'<button class="sodelbtn btn btn-primary">삭제</button>');
			}

			for (var j = 0; j < data.re.length; j++) {
				if (data.so[i].s_num == data.re[j].s_num) {
					$('#reply_' + data.so[i].s_num)
							.append(
									'<div><div id="reply_id">'
											+ data.re[j].id
											+ '</div><div id="reply_content">'
											+ data.re[j].rs_content
											+ '</div><div id="reply_btn"><a class="updebtn">삭제</a><input id="reply_num" type="hidden" value="'+data.re[i].rs_num+'" /></div></div></div>');
				}

			}

			if (session_id.length != 0) {
				$('#reply' + data.so[i].s_num)
						.append(
								'<input type="text" id="re_content" class="form-control" /><input id="social_snum" type="hidden" value="'+data.so[i].s_num+'" /><button type="button" class="btn btn-primary Btn replyBtn"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>댓글달기</button></div></div>');

			}

			$('#contentbb' + data.so[i].s_num).val(
					$('#contentbb' + data.so[i].s_num).val().trim());
			$('#contentbb' + data.so[i].s_num).val(
					$('#contentbb' + data.so[i].s_num).val().replace(
							/<br\s?\/?>/g, "\n"));

		}
	}
	function insertview(data) {
		$('#s_content').val("");
		$('#filename').val("");

		$('#aaaa').empty();
		var niceC = 0;
		for (var i = 0; i < data.so.length; i++) {

			$('#aaaa')
					.append(
							'<div id ="border'
									+ data.so[i].s_num
									+ '" class="panel panel-default block">')
			$("#border" + data.so[i].s_num)
					.append(
							'<div id="bodys'+data.so[i].s_num+'" class="panel-body"><div class="row"><div class="col-md-12"><img src="\\projectpub\\temp//'
									+ data.so[i].mem.face
									+ '"class="img-responsive img-circle col-md-3">'
									+ '<h4 class="col-md-5" id="reply_id">'
									+ data.so[i].id
									+ '</h4>'
									+ '<div class="com-md-2 com-md-offset-2 text-right">'
									+ data.so[i].s_date
									+ '</div>'
									+ '</div></div><div class="row"><p id="contentbb'+data.so[i].s_num+'"class="col-md-12">'
									+ data.so[i].s_content + '</p>' + '</div>');
			if (data.so[i].s_upload != null) {
				$("#bodys" + data.so[i].s_num)
						.append(
								'<div class="row"><div class="col-md-12"><img alt="" src="\\projectpub\\temp//'
										+ data.so[i].s_upload
										+ '"class="img-responsive"></div></div>');
			}

			if (data.so[i].nice == null) {
				niceC = 0;
			} else {
				niceC = data.so[i].nice.s_nice;
			}
			$("#bodys" + data.so[i].s_num)
					.append(
							'<div class="row"><div id="btnbtn'+data.so[i].s_num+'" class="col-md-12"><input id="social_snum" type="hidden" value="'
									+ data.so[i].s_num
									+ '" /><button type="button" id="nicebtn'
									+ data.so[i].s_num
									+ '"class="nicebtn btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"aria-hidden="true"></span>좋아요ㆍ'
									+ niceC + '</button></div></div>');
			$("#btnbtn" + data.so[i].s_num)
					.append(
							'<button type="button" class="reviewbtn btn btn-primary">댓글보기</button>');
			$('#bodys' + data.so[i].s_num)
					.append(
							'<div id="replyList'
					+ data.so[i].s_num
					+ '"class="review row"><div id="reply'+data.so[i].s_num+'"class="reply col-md-12"><div id="reply_'+data.so[i].s_num+'"></div>');
			if (data.so[i].id == session_id) {
				$("#btnbtn" + data.so[i].s_num).append(
						'<button class="sodelbtn btn btn-primary">삭제</button>');
			}

			for (var j = 0; j < data.re.length; j++) {
				if (data.so[i].s_num == data.re[j].s_num) {
					$('#reply_' + data.so[i].s_num)
							.append(
									'<div><div id="reply_id">'
											+ data.re[j].id
											+ '</div><div id="reply_content">'
											+ data.re[j].rs_content
											+ '</div><div id="reply_btn"><a class="updebtn">삭제</a><input id="reply_num" type="hidden" value="'+data.re[i].rs_num+'" /></div></div></div>');
				}

			}

			if (session_id.length != 0) {
				$('#reply' + data.so[i].s_num)
						.append(
								'<input type="text" id="re_content" class="form-control" /><input id="social_snum" type="hidden" value="'+data.so[i].s_num+'" /><button type="button" class="btn btn-primary Btn replyBtn"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>댓글달기</button></div></div>');

			}

			$('#contentbb' + data.so[i].s_num).val(
					$('#contentbb' + data.so[i].s_num).val().trim());
			$('#contentbb' + data.so[i].s_num).val(
					$('#contentbb' + data.so[i].s_num).val().replace(
							/<br\s?\/?>/g, "\n"));

		}

	}
</script>

</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<c:if test="${sessionScope.mem!=null}">

						<div class="panel panel-default block">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12 nopadding">
										<c:choose>
											<c:when test="${sessionScope.mem.face!=null}">
												<img src="\projectpub\temp//${sessionScope.mem.face}"
													class="img-circle img-responsive col-md-3">
											</c:when>
											<c:otherwise>
												<img src="images/nopicture.png"
													class="img-circle img-responsive col-md-3">
											</c:otherwise>
										</c:choose>
										<h4 class="col-md-5">${sessionScope.mem.id}</h4>
									</div>
									<div class="row">
										<form id="socialins" class="col-md-12" method="post"
											enctype="multipart/form-data">
											<div class="form-group">
												<textarea id="s_content" name="s_content"
													class="form-control" rows="3"></textarea>
											</div>
											<input type="file" id="filename" name="filename" /> <input
												type="hidden" name="id" value="${sessionScope.mem.id}" />
										</form>

									</div>
									<div class="col-md-12 text-right">
										<input id="sibtn"
											class="btn btn-default btn-lg glyphicon glyphicon-star"
											value="글쓰기" />

									</div>
								</div>
							</div>
						</div>
					</c:if>
					<!-- 
					<form role="form" name="frms" class="frms form-inline"
						action="qna2.do">
						<div class="row">
							<div class="col-xs-10">
								<input type="text" class="form-control" placeholder="">
							</div>
							<div class="col-xs-2">
								<input type="button" class="btn btn-success text-right"
									value="submit">
							</div>
						</div>
					</form>
 -->

					<div id="aaaa">
						<c:forEach items="${so}" var="ss">
							<div id="border${ss.s_num}" class="panel panel-default block">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<img src="\projectpub\temp//${ss.mem.face}"
												class="img-responsive img-circle col-md-3">
											<h4 class="col-md-5" id="reply_id">${ss.id}</h4>
											<div class="com-md-2 com-md-offset-2 text-right">${ss.s_date}</div>
										</div>
									</div>

									<div class="row">
										<p class="col-md-12">${ss.s_content}</p>
									</div>
									<c:if test="${ss.s_upload!=null}">
										<div class="row">
											<div class="col-md-12">
												<img alt="" src="\projectpub\temp//${ss.s_upload}"
													class="img-responsive">
											</div>
										</div>
									</c:if>
									<div class="row">
										<div id="btnbtn${ss.s_num}" class="col-md-12">
											<input id="social_snum" type="hidden" value="${ss.s_num}" />
											<button type="button" id="nicebtn${ss.s_num}"
												class="nicebtn btn btn-primary">
												<span class="glyphicon glyphicon-thumbs-up"
													aria-hidden="true"></span>좋아요ㆍ${ss.nice.s_nice }
											</button>

											<button type="button" class="reviewbtn btn btn-primary">댓글보기</button>
											<c:if test="${ss.id==sessionScope.mem.id}">
												<button type="button"
													class="sodelbtn btn btn-primary text-right">삭제</button>
											</c:if>
										</div>
									</div>
									<div id="replyList${ss.s_num}" class="review row">
										<div class="reply col-md-12">
											<div id="reply_${ss.s_num}">
												<c:forEach items="${re}" var="re">
													<c:if test="${ss.s_num==re.s_num}">
														<div>
															<div id="reply_id">${re.id}</div>
															<div id="reply_content">${re.rs_content}</div>
															<div id="reply_btn">
																<c:if test="${re.id==sessionScope.mem.id}">
																	<a class="updebtn">삭제</a>
																	<input id="reply_num" type="hidden"
																		value="${re.rs_num}" />

																</c:if>
															</div>
														</div>
														<!-- <button type="button" class="btn btn-primary delBtn">
																삭제</button> -->
													</c:if>
												</c:forEach>
											</div>
											<c:if test="${sessionScope.mem.id !=null}">
												<input type="text" id="re_content"
													class="re_content form-control" />
												<input id="social_snum" type="hidden" value="${ss.s_num}" />
												<button type="button" class="btn btn-primary replyBtn">
													<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>댓글달기
												</button>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>

				</div>
				<!-- end of row -->
			</div>
			<div class="circle3">+</div>

		</div>

	</div>
</body>
</html>
