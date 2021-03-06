$(document)
		.ready(
				function() {
					
					// 비로그인시 별점띄워주는
					notlogstar_view(staravg);
					// 리플 삭제
					$(document).on('click', '.reply_del', reply_DeleteLlist);
					
					$('.btnRes').bind('click', function() {
						if(logchk==1){
							if($('#reser_date').val().length!=0){
								if($('#reser_time').val()!='n'){
									var IMP = window.IMP; // 생략가능
									IMP.init('imp68404030'); // 'iamport' 대신
																// 부여받은
																// "가맹점식별코드"를사용
									IMP.request_pay({
										pg : 'html5_inicis',
										pay_method : 'phone',
										merchant_uid : 'merchant_' + new Date().getTime(),
										name : '주문명:결제테스트',
										amount : $('#res_people').val()*1000,
										buyer_email : 'iamport@siot.do',
										buyer_name : '구매자이름',
										buyer_tel : '010-1234-5678',
										buyer_addr : '서울특별시 강남구 삼성동',
										buyer_postcode : '123-456'
									}, function(rsp) {
										if ( rsp.success ) {
											var msg = '결제가 완료되었습니다.';
											msg += '마이페이지에서 확인이 가능합니다.';
											$('#frm').attr('action', "pubview.do").submit();	
										} else {
											var msg = '결제에 실패하였습니다.';
											msg += '에러내용 : ' + rsp.error_msg;
										}
										
										alert(msg);
									});
									// 결재
								}else{
									alert('시간를 선택해주세요.')
									$('#reser_time').focus();
								}
							}else{
								alert('날짜를 선택해주세요.')
								$('#reser_date').focus();
							}
							
						}else{
							 location.href="login.do?returnUrl=pubview.do?p_num="+param_p_num;
							 	}
													
					});
					
					// 댓글 달기
				   $('#reply_commit').on('click',abcdef);
							
				
					
					
					// 수정
					$(document)
							.on(
									'click',
									'.reply_update',
									function() {
										if ($(this).text() == '수정') {

											$('.reply_content' + $(this).val())
													.replaceWith(
															'<input type="text" id="reply_contentaa'+$(this).val()+'" value=""/>');
										
											$(this).text('확인');
										} else if ($(this).text() == "확인") {
											if($('#reply_contentaa' + $(this).val()).val().length==0){
												alert('수정내용을 입력하세요.')
											}else{
												reply_UpdateLlist($(this).val());
											}
										}
									})
								// 스타 인설트
					$('.star_input').mouseenter(function(){
				         star_rating();
				         $(this).mouseleave(function(){
				            // console.log(idx);
				            $('.star_input span:lt('+idx+'):even').addClass('over-left');
				            $('.star_input span:lt('+idx+'):odd').addClass('over-right');
				            $('div span').off();
				         });
				      });
					
					$('.star_input').bind('click', function(){
						pubStar_InsertLlist();
						});
					
					 $('.slide_sub').bind('click', function(){
						 $('#mimg').attr('src',$(this).attr('src'));
					 });
					 
				});


// 별점 인설트
function pubStar_InsertLlist() {
	$.ajax({
				type : 'POST',
				dataType : 'json',
				url : 'pubStarInsertList.do',
				data : 'p_num=' + param_p_num + '&s_stars='
						+ (idx/2)+'&id='+session_id,// Number($('.score').text()),
				success : starViewMessage,
				error : function(error) {
					alert(error);
				}
			});		
}

function reply_InsertLlist() {
	$
			.ajax({
				type : 'POST',
				dataType : 'json',
				url : 'replyInsertList.do',
				data : 'p_num=' + param_p_num + '&pr_content='
						+ $('#re_content').val()+'&id='+session_id,
				success : viewMessage,
				error : function(error) {
					alert(error);
				}
			});

}

function reply_UpdateLlist(e) {
	// alert(e);
	// alert($('#reply_content2').val());
	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : 'replyUpdateList.do',
		data : 'p_num=' + param_p_num + '&pr_num=' + e + '&pr_content='
				+ $('#reply_contentaa'+e).val(),
		success : viewMessage,
		error : function(error) {
			alert(error);
		}
	});

}

function reply_DeleteLlist() {
	// alert($(this).val());
	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : 'replyDeleteList.do',
		data : 'p_num=' + param_p_num + '&pr_num=' + $(this).val(),
		success : viewMessage,
		error : function(error) {
			alert(error);
		}
	});

}

function process() {
	$('[name=content]').val($('[name=content]').val().replace(/\n/gi, '<br/>'));
	return true;
}

// 별점시작

	function star_rating() {
		$('div span').removeClass('over-left');
		$('div span').removeClass('over-right');
		$('div span').mouseenter(
				function(e) {
					var i = $(e.target).index() + 1;
					var score = (i / 2).toFixed(1);
					$('.score').text(score+'점');
					idx = i;
					$('.star_input span:lt(' + i + '):even').addClass(
							'over-left');
					$('.star_input span:lt(' + i + '):odd').addClass(
							'over-right');
				}).mouseleave(
				function(e) {
					var i = $(e.target).index() + 1;
					idx=i;
					$('.star_input span:lt(' + i + '):even')
							.removeClass('over-left');
					$('.star_input span:lt(' + i + '):odd')
							.removeClass('over-right');
				});
	}
// 별점 끝

// 별점 띄우기
function star_view(s){
	   // 추후 해당 축제 별점 수를 가져와서 나눠주는 걸로 바꿀 것
	   var star=Math.floor(s);
	   var star_half=Number((s-star).toFixed(2));
	   if(star!=0){
	   for(var i=1;i<=star;i++){
	      $('#starview').append('<img src="images/star1.png" width="30px" height="30px">');
	   }
	   if(star_half>=0.5){
	      $('#starview').append('<img src="images/star0.5.png" width="30px" height="30px">');
	   }
	   }else{
	      for(var i=1;i<=5;i++){
	         $('#starview').append('<img src="images/star0.png" width="30px" height="30px">');
	      }
	   }
	}
	

function notlogstar_view(s){

	  // 추후 해당 축제 별점 수를 가져와서 나눠주는 걸로 바꿀 것
	   var star=Math.floor(s);
	   var star_half=Number((s-star).toFixed(2));
	   if(star!=0){
	   for(var i=1;i<=star;i++){
	      $('#starview').append('<img src="images/star1.png" width="30px" height="30px">');
	   }
	   if(star_half>=0.5){
	      $('#starview').append('<img src="images/star0.5.png" width="30px" height="30px">');
	   }
	   }else{
	      for(var i=1;i<=5;i++){
	         $('#starview').append('<img src="images/star0.png" width="30px" height="30px">');
	      }
	   }
	}


	
// 별점 띄우기 끝
