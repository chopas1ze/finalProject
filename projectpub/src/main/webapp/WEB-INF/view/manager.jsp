<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/manager.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="//cdn.jsdelivr.net/morris.js/0.5.1/morris.min.js"></script>
<script src="js/aja.js?ver=1"></script>
<script type="text/javascript">
function searchfn(){
    $.ajax({
       type:'GET',
       dataType:'json',
       url:'search.do?search='+$('#search-con').val(),
       success:viewMessage2,
    });
	};
</script>
</head>
<body>
	<c:if test="${sessionScope.mem.userchk=='C' || sessionScope.mem.userchk=='S'}">
		<script>
			alert('접근이 불가능합니다.');
			location.href = "mypage.do";
		</script>
	</c:if>

		<div id="content">	

			<div id="view">
			
				<div id="ex" style="margin-top:10px;">
					
					<div id="tt" style="width:1100px; height:100px;">
						<a><img src="images/ppp.png" width="250px" height="100px" style="margin-left:425px; margin-right:100px;"/></a>
					</div>
				
					<div id="cal" style="width: 1000px; height:250px; float:left;"></div>
    					<script>
    						var day_data	 = [
    				  			{"period": "2016-01", "전체회원": "${to[0]}", "가입자": "${cal[0]}", "펍등록수":"${pubdate[0]}"},
    				  			{"period": "2016-02", "전체회원": "${to[1]}", "가입자": "${cal[1]}", "펍등록수":"${pubdate[1]}"},
    							  {"period": "2016-03", "전체회원": "${to[2]}", "가입자": "${cal[2]}", "펍등록수":"${pubdate[2]}"},
    							  {"period": "2016-04", "전체회원": "${to[3]}", "가입자": "${cal[3]}", "펍등록수":"${pubdate[3]}"},
    							  {"period": "2016-05", "전체회원": "${to[4]}", "가입자": "${cal[4]}", "펍등록수":"${pubdate[4]}"},
    							  {"period": "2016-06", "전체회원": "${to[5]}", "가입자": "${cal[5]}", "펍등록수":"${pubdate[5]}"},
    							  {"period": "2016-07", "전체회원": "${to[6]}", "가입자": "${cal[6]}", "펍등록수":"${pubdate[6]}"},
    							  {"period": "2016-08", "전체회원": "${to[7]}", "가입자": "${cal[7]}", "펍등록수":"${pubdate[7]}"},
    							  {"period": "2016-09", "전체회원": "${to[8]}", "가입자": "${cal[8]}", "펍등록수":"${pubdate[8]}"},
    							  {"period": "2016-10", "전체회원": "${to[9]}", "가입자": "${cal[9]}", "펍등록수":"${pubdate[9]}"},
    							  {"period": "2016-11", "전체회원": "${to[10]}", "가입자": "${cal[10]}", "펍등록수":"${pubdate[10]}"},
    							  {"period": "2016-12", "전체회원": "${to[11]}", "가입자": "${cal[11]}", "펍등록수":"${pubdate[11]}"}
    						];
    						Morris.Line({
    					 		element: 'cal',
    					  		data: day_data,
    							xkey: 'period',
    							ykeys: ['전체회원', '가입자','펍등록수'],
    							labels: ['전체회원', '가입자','펍등록수'],
    						});
    					</script>
					
					<div id="donut_example" style="width: 366px; height: 200px; float:left">
						<script>
   							Morris.Donut({
    							element: 'donut_example',     //그래프가 들어갈 위치의 ID를 적어주세요
    							data: [                                     //그래프에 들어갈 data를 적어주세요
    							{label: '남성', value: "${m}" },
    							{label: '여성', value: "${f}" }
    							],
    							colors: ["#4FC3F7", "#F06292"], //그래프 color를 지정해줍니다.
    							formatter: function (y) { return y}  //y값 뒤에 %를 추가해줍니다.
    						});
    					</script>
    				</div>		

					<div id="donut_example2" style="width: 366px; height: 200px; float:left">
						<script>
    						Morris.Donut({
    							element: 'donut_example2',     //그래프가 들어갈 위치의 ID를 적어주세요
    								data: [                                     //그래프에 들어갈 data를 적어주세요
    								{label: '소비자', value: "${con}" },
    								{label: '판매자', value: "${sup}" },
    								{label: 'pub수', value: "${pubcount}" }
    							],
    							colors: ["#03A9F4", "#00BCD4", "#009688"], //그래프 color를 지정해줍니다.
    							formatter: function (y) { return y}  //y값 뒤에 %를 추가해줍니다.
    						});
    					</script>
    				</div>
    			
   					<div id="donut_example3" style="width: 366px; height: 200px; float:left">
						<script>
    						Morris.Donut({
    							element: 'donut_example3',     //그래프가 들어갈 위치의 ID를 적어주세요
    							data: [                                     //그래프에 들어갈 data를 적어주세요
    								{label: '20대', value: "${birth[0]}"},
    								{label: '30대', value: "${birth[1]}"},
    								{label: '40대', value: "${birth[2]}"},
    								{label: '50대', value: "${birth[3]}"},
    								{label: '60대', value: "${birth[4]}"}
    							],
    							colors: ["#B3E5FC", "#4FC3F7", "#03A9F4","#0288D1","#01579B"], //그래프 color를 지정해줍니다.
    							formatter: function (y) { return y}  //y값 뒤에 %를 추가해줍니다.
    						});
    					</script>   
   			 		</div>
				</div>

				
				<div class="row">
				
                        <div class="table-responsive col-md-6">
                        <h2 class="sub-header">판매자 신청 현황:${total}</h2>
                           <table class="table table-striped">
                              <thead>
                                 <tr class="info">
                                    <th>ID</th>
                                    <th>이름</th>
                                    <th>사업자 번호</th>
				    <th>처리 여부</th>
                                 </tr>
                              </thead>
                              <tbody>
				<c:forEach items="${List}" var="dto">
                                          <tr>
                                             <td>${dto.id}</td>
                                             <td>${dto.name}</td>
                                             <td>${dto.saupja_num}</td>
						<td><button id="ok" type="submit" value="${dto.id}">확인</button>
                                                <button id="can" type="submit" value="${dto.id}">취소</button></td>
                                          </tr>
                                 </c:forEach>
                                    
                              </tbody>
                           </table>
                        </div>
                       
                        <div class="table-responsive col-md-6">
                         <h2 class="sub-header">펍등록 신청 현황 : ${total2}</h2>
                           <table class="table table-striped">
                              <thead>
                                 <tr class="success">
                                    <th>ID</th>
                                    <th>이름</th>
                                    <th>PUB 이름</th>
                                    <th>링크</th>
                                 </tr>
                              </thead>
                              <tbody>

                                       <c:forEach items="${List2}" var="dto">
                                          <tr>
                                             <td>${dto.id}</td>
                                             <td>${dto.members.name}</td>
                                             <td>${dto.p_title}</td>
                                             <td><a href="pubpre.do?id=${dto.id}">등록확인</a></td>

                                          </tr>
                                       </c:forEach>
                                  
                              </tbody>
                           </table>
                        </div>
				</div>

			</div>

		</div>


</body>
</html>