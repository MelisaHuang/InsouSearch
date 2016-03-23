<!-- 点击收缩换肤栏 -->
$(".but").click(function(){
	$("#hf").slideToggle("slow");  
});
<!-- 点击换body图 -->
$(".scrollCon ul li").click(function(){
	var simg=$(this).find("img").attr("src");
	var bimg=simg.replace(/-\d*/,'');  //根据小图找到大图的名称
	$("body").css("background","url("+bimg+")");//url("+bimg+"),添加 变量的方法
	
});
<!-- 点击左边按钮 -->
var click_num=0; //初始点击次数

$(".left").click(function(){
	click_num++;       //click_num+1
	if(click_num>2){
		click_num=0;
	}
	$(".scrollCon").animate({left:click_num*(-1080)},300);
});
$(".right").click(function(){
	click_num--;       //click_num+1
	if(click_num<0){
		click_num=2;
	}
	$(".scrollCon").animate({left:click_num*(-1080)},300);
});