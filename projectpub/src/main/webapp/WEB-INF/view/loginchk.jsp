<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript">
	/* function loginchk(){
	
	 var popUrl = 'gotomessage.do?id='+mdto_id;	
	 var popOption = "width=780, height=500, resizable=no, scrollbars=no, top=200, left=600, status=no;";    
	 window.open(popUrl,"",popOption);
	
	 };//end gotomessage()///////////
	 */
	var id = '${param.id}';
	$(document).ready(function() {
		if (id != null) {
			alert('이메일 인증에 성공했습니다.');
			$('#frm').attr('action', "loginchk.do").submit();
		}else{
			alert('이메일인증에 실패했습니다.');
			 location.href="mainview.do";
		}
	})
</script>

</head>
<body>
	<form method="post" id="frm">
		<input type="hidden" name="id" value="${param.id}" />
	</form>
</body>
</html>