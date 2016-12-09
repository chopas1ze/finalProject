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

#bx{
margin: 10px 0;

/*  background-color: black; */

/* background-color: #212121;
 */
}


</style>


<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.10.custom.min.js"></script>
<script type="text/javascript" src="js/accordionImageMenu-0.4.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#menu').AccordionImageMenu({
			position : 'horizontal', //아코디언 가로/세로 방향을 설정 설정합니다.
			openItem : 0, //마우스를 올리지 않았을 때 기본 열려있는 배너를 설정함. 
			openDim : 650, //열려있는 배너의 너비를 설정함. 
			closeDim : 280, //닫혀있는 배너의 너비를 설정함. 
			height : 554, //배너의 높이를 설정함. 
			duration : 300, //전환되는 속도를 설정합니다. 
			effect : 'easeOutQuint', //전환될 때의 가속도를 설정합니다.
			border : 0
		});
	});
</script>


</head>
<body>



<div id="bx">
	<div class="container">
		<div class="row">
			<div id="banner" class="col-md-12">
				<ul id='menu'>
					<li><a href="link1"><span>title 1</span><img
							src="images/highqual3.jpg" alt="" /></a></li>
					<li><a href="link2"><span>title 2</span><img
							src="images/highqual1.jpg" alt="" /></a></li>
					<li><a href="link3"><span>title 3</span><img
							src="images/highqual4.jpg" alt="" /></a></li>
					<li><a href="link4"><span>title 4</span><img
							src="images/highqual2.jpg" alt="" /></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

</body>
</html>