$(document).ready(
		function() {
			$('#sibtn').on('click', function() {

				if ($('#s_content').val().length == 0) {
					alert('내용을 입력하세요.')
				} else {
					process();
					SocialinsetList();
				}
			});

			$(document).on(
					'click',
					'.reviewbtn',
					function() {
						if ($(this).text() == "댓글보기") {
							$(this).parent().parent().parent().children(
									'.review').show();
							$(this).text("댓글닫기");
						} else {
							$(this).parent().parent().parent().children(
									'.review').hide();
							$(this).text("댓글보기");
						}
					});

			// 댓글달기
			$(document)
					.on(
							'click',
							'.replyBtn',
							function() {
								if ($(this).parent().children('#re_content')
										.val().length == 0) {
									alert('댓글을 입력하세요.');
								} else {
									reply_InsertLlist($(this).parent()
											.children('#social_snum').val(), $(
											this).parent().children(
											'#re_content').val());
								}

							});

			// 수정 삭제 버튼
			$(document).on(
					'click',
					'.updebtn',
					function() {
						if ($(this).text() == '삭제') {
							reply_DelLlist($(this).parent().parent().parent()
									.parent().children('#social_snum').val(),
									$(this).parent().children('#reply_num')
											.val());
						}
						if ($(this).text() == '수정') {
						}

					})

			// 좋아요 버튼
			$(document).on(
					'click',
					'.nicebtn',
					function() {
						if (session_id.length == 0) {
							location.href = "login.do?returnUrl=social.do";
						} else {
							// alert($(this).parent().children('#social_snum').val())
							nice_InsertLlist($(this).parent().children(
									'#social_snum').val());
						}
					})

			// 좋아요취소 버튼
			/*
			 * $(document).on( 'click', '.niceDelbtn', function() {
			 * nice_DeleteLlist($(this).parent().children(
			 * '#social_snum').val()) });
			 */

			// 더보기 버튼
			$(document).on('click', '.circle3', function() {
				if (Number(endRow) < Number(totalRow)) {
					recipeList();
				}
			});

			// 삭제버튼
			$(document).on('click', '.sodelbtn', function() {
				socialDelList($(this).parent().children('#social_snum').val())
			});

		});
/*
 * 스크롤 $(window).on("scroll", function() { var bodyBottom = $("body").height();
 * var scrollBottom = $(window).scrollTop() + $(window).height() - 109.8; //
 * alert(bodyBottom); // alert(scrollBottom); if (bodyBottom <= scrollBottom) {
 * if (Number(endRow) < Number(totalRow)) { recipeList(); } } });
 */

// 후기작성
function SocialinsetList() {

	var form_data = new FormData();
	form_data.append('id', session_id);
	form_data.append('s_content', $('#s_content').val());
	if ($('#filename')[0].files[0] != undefined) {
		form_data.append('filename', $('#filename')[0].files[0]);
	}

	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		url : "socialInsert.do",
		data : form_data,
		success : insertview,
		error : function(xhr, textStatus, error) {
			alert(error);
		}
	});

}

// 더보기버튼
function recipeList() {
	currentRow += 1;
	$.ajax({
		type : "POST",
		dataType : "json",
		url : "social.do",
		data : "currentRow=" + currentRow,
		success : viewView,
		error : function(xhr, textStatus, error) {
			alert(error);
		}
	});

}

// 소셜삭제
function socialDelList(s_num) {
	// alert(s_num)
	// alert(session_id)
	$.ajax({
		type : "POST",
		dataType : "text",
		url : "socialDelList.do",
		data : "s_num=" + s_num + '&id=' + session_id,
		success : function(data) {
			location.href = "social.do";
		},
		error : function(xhr, textStatus, error) {
			alert(error);
		}
	});

}

// 댓글달기
function reply_InsertLlist(s_num, rs_content) {
	// alert(s_num);
	// alert(rs_content);
	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : 'socialreplyInsertList.do',
		data : 's_num=' + s_num + '&rs_content=' + rs_content + '&id='
				+ session_id,
		success : replyviewMessage,
		error : function(error) {
			alert(error);
		}
	});
}

// 댓글삭제
function reply_DelLlist(s_num, rs_num) {
	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : 'socialreplyDeleteList.do',
		data : 's_num=' + s_num + '&id=' + session_id + '&rs_num=' + rs_num,
		success : replyviewMessage,
		error : function(error) {
			alert(error);
		}
	});
}

// 좋아요 버튼
function nice_InsertLlist(s_num) {
	$.ajax({
		type : 'POST',
		dataType : 'json',
		url : 'socialniceInsertList.do',
		data : 's_num=' + s_num + '&id=' + session_id,
		success : niceviewMessage,
		error : function(error) {
			alert(error);
		}
	});
}

function process() {
	$('#s_content').val($('#s_content').val().replace(/\n/gi, '<br/>'));
	return true;
	;// end process()///////////////
}

// 좋아요 삭제 버튼
/*
 * function nice_DeleteLlist(s_num) { alert(s_num); $.ajax({ type : 'POST',
 * dataType : 'json', url : 'socialniceDelList.do', data : 's_num=' + s_num +
 * '&id=' + session_id, success : nicenotviewMessage, error : function(error) {
 * alert(error); } }); }
 */