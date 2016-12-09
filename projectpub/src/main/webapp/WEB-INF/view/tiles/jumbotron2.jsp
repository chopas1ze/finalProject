<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice</title>

<link rel="stylesheet" type="text/css"
	href="css/notice.css">

<style type="text/css">
#color {
	background-image: url("images/ilu.jpg");
}


#jumbowhite h1, #jumbowhite p{
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
}

</style>


</head>
<body>





	<!-- head of board -->


	<div class="jumbotron" id="color">
		<div class="container text-center" id="jumbowhite">
			<h1>Q & A</h1>
			<p>문의사항을 남겨주세요</p>


			<a href="notice.do" class="btn btn-primary" role="button"><span
				class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;
				공지사항</a> <a href="qna.do" class="btn btn-primary" role="button"><span
				class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>&nbsp;
				Q&A</a>



		</div>
	</div>







</body>
</html>