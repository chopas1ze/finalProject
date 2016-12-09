<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Fixed Top Navbar Example for Bootstrap</title>

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
<script type="text/javascript">
	
	function gotomessage(){
	var popUrl = 'gotomessage.do';	
	var popOption = "width=780, height=500, resizable=no, scrollbars=no, top=200, left=600, status=no;";    
		window.open(popUrl,"",popOption);
	};
	
	


</script>


</head>

<body>
 <sql:setDataSource var="conn" driver="oracle.jdbc.OracleDriver"
  user="hr" password="a1234" url="jdbc:oracle:thin://@127.0.0.1:1521:xe"/>
 
 <sql:query var="rs" dataSource="${conn}">
  select count(*) as count from(select * from talk where t_resp=? and t_check='N')
   <sql:param value="${sessionScope.mem.id}" />
 </sql:query>       

	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="mainview.do">The Pub</a>
			</div>

			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="notice.do">공지사항&질문</a></li>
					<li><a href="lookat.do">PUB 소개/예약</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="social.do">후기게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<c:choose>
				<c:when test="${mem.userchk=='A'}">
				<li><a href="manager.do">관리자페이지</a>
				<li><a href="logout.do">로그아웃</a></li>
				</c:when>
				<c:when test="${mem!=null}">
				<li><a href="mypage.do">마이페이지</a></li>
			- 	<c:forEach items="${rs.rows}" var="msgcnt">
				<c:if test="${msgcnt.count!=0}">
				<li><a href="#" onclick="gotomessage();"><img id="msgimg" src="images/msg.png" width="35px" height="20px"></a></li>				
				</c:if>
				</c:forEach> 
				<li><a href="logout.do">로그아웃</a></li>
				</c:when>
				<c:otherwise>
				<li><a href="login.do">로그인</a>
				</c:otherwise>
				</c:choose>
				
				</ul>
				
			</div>
		</div>
	</nav>

</body>
</html>
