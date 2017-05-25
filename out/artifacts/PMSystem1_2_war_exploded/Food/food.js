$(function(){
	//点赞事件
	$("span.zan").on('click',function(){
		$(this).toggleClass("act");
		if($(this).hasClass("act")){
			$(this).addClass("acty");
			$(this).children("a").html(parseInt($(this).children("a").html())+1);
		}else{
			$(this).removeClass("acty");
			$(this).children("a").html(parseInt($(this).children("a").html())-1);
		}
	});
	
})