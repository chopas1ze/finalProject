$(document).ready(function(){
   
      $('.currentPage').on('click',function(){
         $.ajax({
            type:'GET',
            dataType:'json',
            url:'lookat2.do?currentPage='+$(this).text(),
            success: viewMessage,
         });
      });
      
      $('#serbtn').on('click',searchfn);
    	
      
      $(document).on('click','#currentPage',function(){
         $.ajax({
            type:'GET',
            dataType:'json',
            url:'search2.do?currentPage='+$(this).text(),
            success: viewMessage3,
         });
      })
      
      $('#select').change(function(){
         $.ajax({
            type:'GET',
            dataType:'json',
            url:'search.do?search='+$('#select option:selected').val(),
            success:viewMessage2,
         });
      });
      

      $(document).on('click','.plus',function(){
    	  location.href="quick.do?p_num="+$(this).children("input").val();
      })

      $(document).on('click','#ok',function(){
         location.href="managero.do?id="+$(this).val();
      });
      
      $(document).on('click','#can',function(){
         location.href="managerc.do?id="+$(this).val();
      });
      
      $(document).on('click','#jpbtn',function(){
         location.href="managerpo.do?id="+$('#jpID').val();
      });
      
      $(document).on('click','#jpcanclebtn',function(){
         location.href="managerpc.do?id="+$('#jpID').val();
      });
      $(document).on('click','#pubpre',function(){
         location.href="pubpre.do?id="+$(this).val();
      });
   
      
});
function viewMessage(data){
	   $('#rec-con').empty();
	         $.each(data, function(index, value) {
	            $('#rec-con').append('<div class="col-md-6"><a class="plus" ><input id="plus_in" type="hidden" value="'+value.p_num+'"/><img class="col-md-12" src="\\projectpub\\temp//'+value.p_mupload+'" alt="사진1"style="width: 100%; height: 320px; " /></a><div class="col-md-6"style="text-align: center; margin-top:10px;"><p>Pub집 이름 : '+value.p_title+'</p><p>Pub집 주소 : '+value.p_address+'</p><p>최대인원 : '+value.p_maxpeople+'</p></div><div class="col-md-6" style="text-align: center; margin-top:10px;"><div class='+value.p_num+' style="margin-bottom: 20px;"></div><p>'+value.star.s_stars.toFixed(1)+'점</p></div></div>');
	            star(value.star.s_stars,value.p_num);
	   });
	};
	
function viewMessage2(data){
   var a ='';
   for (var int = data.pv.startPage; int <= data.pv.endPage; int++) {
      a=a +'<a id="currentPage">'+int+'</a>';
   }
   $('#rec-con').empty();
   $.each(data.you, function(index, value) {
	   		$('#rec-con').append('<div class="col-md-6"><a class="plus" ><input id="plus_in" type="hidden" value="'+value.p_num+'"/><img class="col-md-12" src="\\projectpub\\temp//'+value.p_mupload+'" alt="사진1"style="width: 100%; height: 320px; " /></a><div class="col-md-6"style="text-align: center; margin-top:10px;"><p>Pub집 이름 : '+value.p_title+'</p><p>Pub집 주소 : '+value.p_address+'</p><p>최대인원 : '+value.p_maxpeople+'</p></div><div class="col-md-6" style="text-align: center; margin-top:10px;"><div class='+value.p_num+'style="margin-bottom: 20px;"></div><p>'+value.star.s_stars.toFixed(1)+'점</p></div></div>');
      star(value.star.s_stars,value.p_num);
   });

   $('#rec-num').empty();
   $('#rec-num').append(a);
   
}

function viewMessage3(data){
   $('#rec-con').empty();
         $.each(data, function(index, value) {
        	 $('#rec-con').append('<div class="col-md-6"><a class="plus" ><input id="plus_in" type="hidden" value="'+value.p_num+'"/><img class="col-md-12" src="\\projectpub\\temp//'+value.p_mupload+'" alt="사진1"style="width: 100%; height: 320px; " /></a><div class="col-md-6"style="text-align: center; margin-top:10px;"><p>Pub집 이름 : '+value.p_title+'</p><p>Pub집 주소 : '+value.p_address+'</p><p>최대인원 : '+value.p_maxpeople+'</p></div><div class="col-md-6" style="text-align: center; margin-top:10px;"><div class='+value.p_num+'style="margin-bottom: 20px;"></div><p>'+value.star.s_stars.toFixed(1)+'점</p></div></div>');
         star(value.star.s_stars,value.p_num);
   });
}
function star(s,a){
   var star=Math.floor(s);// 정수
   var star_half=Number((s-star).toFixed(1));
      var star_half=(s-star).toFixed(2);
      if(star!=0){
      for(var i=1;i<=star;i++){
         $('.'+a).append('<img src="images/star1.png" width="30px" height="30px">');
      }
      if(star_half>=0.5){
         /*alert("asdasdasd");*/
         $('.'+a).append('<img src="images/star0.5.png" width="30px" height="30px">');
      }
      }else{
         for(var i=1;i<=5;i++){
            $('.'+a).append('<img src="images/star0.png" width="30px" height="30px">');
         }
      }
   }


