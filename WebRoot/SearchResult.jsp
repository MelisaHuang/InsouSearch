<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索结果 </title>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/notification.js"></script>
<script type="text/javascript" src="js/bigimg.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.min.js" ></script>
<script type="text/javascript" src="js/blocksit.min.js"></script>
<script type="text/javascript" src="js/pubu.js"></script>
<link rel="stylesheet" type="text/css" href="css/SResult-bigimg.css"/>
<link rel="stylesheet" type="text/css" href="css/searchBox-s.css">
<link rel="stylesheet" type="text/css" href="css/SResult-pubu.css" media='screen'/>
</head>
<body>
	<div class="showTop">
		<div class="right-head">
			<a href="index.jsp">返回首页</a>
		</div>
		<div id="search_box" class="sb_sform" role="search">
			<div class="search_logo">
				<img src="images/logo.png">
			</div>
			<div class="search_controls">
				<form id="sform" action="content.html" onsubmit="var id = _ge('hpinsthk').getAttribute('h'); return si_T(id);">
					<div class="sform_box">
						<input id="sform_q" class="sform_qq" type="search" name="q" title="输入搜索" value="" maxlength="100">
						<input id="sform_go" class="sform_go" type="submit" name="go" title="搜索" value="确定" tabindex="0">
					</div>
				</form>
			</div>
		</div>
		<div class="tipWord"> 	
			<p> 
				<img src="images/search_logo.png">
				
					<span class="tip"><a href="#">欧美</a></span>
					<span class="tip"><a href="#">欧美时尚美女</a></span>
					<span class="tip"><a href="#">欧美意境</a></span>
					<span class="tip"><a href="#">欧美简约风格</a></span>
					<span class="tip"><a href="#">2015欧美街拍</a></span>
					<span class="tip"><a href="#">欧美潮流</a></span>
					<span class="tip"><a href="#">欧美时装周</a></span>
					<span class="tip"><a href="#">欧美风</a></span>
				
			</p>
			</div>
</div>
<%String keywordname = request.getParameter("keywordname"); %>
<div class="img-all">
<div id="wrapper">
	<div id="container" style="width:995px;">
  	<script type="text/javascript">
	//var count = 0;
	var html = "";
	var img = '';
	for(var i = 1; i < 16; i++){
		var src = 'images/'+"<%=keywordname%>"+'/('+i+').jpg';//注意路径！
		html = html + "<div class='grid'>"+
			"<div class='imgholder'>"+
			"<img class='lazy thumb_photo' title='"+i+"' data-original='"+src+"' width='225' onclick='seeBig(this)'/>"+
			"</div>"+
			"</div>";
		img = img + "<img class='img' src='"+src+"'>";
	}
	$('#container').append(html);
	$('.content').append(img);
	$('#container').BlocksIt({
		numOfCol:4,  //每行显示数
		offsetX: 5,  //图片的间隔
		offsetY: 5   //图片的间隔
	});

</script>
	</div>
</div>
</div>
<!--瀑布流 end-->
<div class="clear"></div>
<div class="load_more">
	<span class="load_more_text">加载更多...</span>
</div>


<!--大图弹出层 start-->
<div class="container">
	<div class="close_div">
		<img src="images/closelabel.gif" class="close_pop" title="关闭" alt="关闭" style="cursor:pointer">　
	</div>
	<!-- 代码 开始 -->
	<div class="content">
		<span style="display:none"><img src="images/load.gif" /></span>
		<div class="left"></div>	
		<div class="right"></div>	
	</div>
	<div class="bottom">共 <span id="img_count">x</span> 张 / 第 <span id="xz">x</span> 张</div>
	<!-- 代码 结束 -->
</div><!--end-->

<script type="text/javascript">
$(document).ready(function(){

	var count = 16;
	// 点击加载更多
	$('.load_more').click(function(){
		var html = "";
		var img = '';
		for(var i = count; i < count+10; i++){
			var n = Math.round(Math.random()*110);//随机数为0-110,每个概率为1/111 
			var src = 'images/'+"<%=keywordname%>"+'/('+n+').jpg';//注意路径！
			html = html + "<div class='grid'>"+
				"<div class='imgholder'>"+
				"<img class='lazy thumb_photo' title='"+i+"' data-original='"+src+"' width='225' onclick='seeBig(this)'/>"+
				"</div>"+
				"</div>";
			img = img + "<img class='img' src='"+src+"'>";
		}
		count = count + 10;
		$('#container').append(html);
		$('.content').append(img);
		$('#container').BlocksIt({
			numOfCol:4,  //每行显示数
			offsetX: 5,  //图片的间隔
			offsetY: 5   //图片的间隔
		});
		$("img.lazy").lazyload();
	});

});
</script>
<script type="text/javascript" src="js/scrolltopcontrol.js"></script></p>
	<div style="height:1000px;"></div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
	<center>
		<p>Copyright ©2015 Insou 团队 版权所有<br>
湖南大学软件工程 | 邮政编码：410082 | 电话：800-820-8820 | 传真：0731-1314918        </p>
	</center>
</div>
</body>
</html>