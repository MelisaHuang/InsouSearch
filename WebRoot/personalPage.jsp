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
<title>个人主页</title>
	<link rel="stylesheet" type="text/css" href="css/searchBox.css">
	<link rel="stylesheet" type="text/css" href="css/style-personalPage.css">
	<link rel="stylesheet" type="text/css" href="css/label-masterblaster.css">
	<link rel="stylesheet" type="text/css" href="css/SResult-bigimg.css"/>
	<link rel="stylesheet" type="text/css" href="css/SResult-pubu.css" media='screen'/>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/notification.js"></script>
	<script type="text/javascript" src="js/bigimg.js"></script>
	<script type="text/javascript" src="js/jquery.lazyload.min.js" ></script>
	<script type="text/javascript" src="js/pubu.js"></script>
	<script type="text/javascript" src="js/blocksit.min.js"></script>
</head>
<body>
	<div class="showTop">
			<%
					String username = request.getParameter("username");
			%>
		<div class="right-head">
			<span class="back-a">您好！<%=username%>
			|
			<a href="index.jsp" class="back-b">返回首页</a></span>
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
	</div>
	<div class="left-bar">
		<div class="menu-l">
			<span class="menu-al">
				<li class="menu-li"><a>我的收藏</a></li>
				<li class="menu-li"><a>我的下载</a></li>
				<li class="menu-li"><a>我的分享</a></li>
				<div class="nav" id="nav">
					<p class="set">我的标签</p>
					<ul class="new">
						<li>欧美</li>
						<li>日韩</li>
						<li>街拍</li>
						<li>时装秀</li>
						<li>模特</li>
						<li>运动</li>
						<li>搭配</li>
						<li>达人</li>
						<li>品牌</li>
						<li>设计师</li>
					</ul>
				</div>
			</span>
		</div>	
	</div>
	<script type="text/javascript">
		$(function(){

			$(".nav p").click(function(){
				var ul=$(".new");
				if(ul.css("display")=="none"){
					ul.slideDown();
				}else{
					ul.slideUp();
				}
			});		
	
			$(".set").click(function(){
				var _name = $(this).attr("name");
				if( $("[name="+_name+"]").length > 1 ){
					$("[name="+_name+"]").removeClass("select");
					$(this).addClass("select");
				} else {
					if( $(this).hasClass("select") ){
						$(this).removeClass("select");
					} else {
						$(this).addClass("select");
					}
				}
			});
	
			$(".nav li").click(function(){
				var li=$(this).text();
				$(".nav p").html(li);
				$(".new").hide();
				/*$(".set").css({background:'none'});*/
				$("p").removeClass("select") ;   
			});
		})
		</script>
	<div class="right-content">
		<div id="wrapper">
			<div id="container" style="width:995px;">
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="1" src="images/pixel.gif" data-original="images/1.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="2" src="images/pixel.gif" data-original="images/2.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="3" src="images/pixel.gif" data-original="images/3.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="4" src="images/pixel.gif" data-original="images/4.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="5" src="images/pixel.gif" data-original="images/5.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="6" src="images/pixel.gif" data-original="images/6.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="7" src="images/pixel.gif" data-original="images/7.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="8" src="images/pixel.gif" data-original="images/8.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="9" src="images/pixel.gif" data-original="images/9.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="10" src="images/pixel.gif" data-original="images/10.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="11" src="images/pixel.gif" data-original="images/11.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="12" src="images/pixel.gif" data-original="images/12.jpg" width="225" />
					</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="lazy thumb_photo" title="13" src="images/pixel.gif" data-original="images/13.jpg" width="225" />
					</div>
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
			<div class="content">
				<span style="display:none"><img src="images/load.gif" /></span>
				<div class="left"></div>
				<div class="right"></div>
				<img class="img" src="images/1.jpg">
				<img class="img" src="images/2.jpg">
				<img class="img" src="images/3.jpg">
				<img class="img" src="images/4.jpg">
				<img class="img" src="images/5.jpg">
				<img class="img" src="images/6.jpg">
				<img class="img" src="images/7.jpg">
				<img class="img" src="images/8.jpg">
				<img class="img" src="images/9.jpg">
				<img class="img" src="images/10.jpg">
				<img class="img" src="images/11.jpg">
				<img class="img" src="images/12.jpg">
				<img class="img" src="images/13.jpg">
			</div>
			<div class="bottom">共 <span id="img_count">x</span> 张 / 第 <span id="xz">x</span> 张</div>
			<!-- 代码 结束 -->
		</div><!--end-->

		<script type="text/javascript">
		$(document).ready(function(){

			var count = 14;
			// 点击加载更多
			$('.load_more').click(function(){
				var html = "";
				var img = '';
				for(var i = count; i < count+13; i++){
					var n = Math.round(Math.random(1)*13);
					var src = 'images/'+n+'.jpg';
					html = html + "<div class='grid'>"+
						"<div class='imgholder'>"+
						"<img class='lazy thumb_photo' title='"+i+"' src='images/pixel.gif' data-original='"+src+"' width='225' onclick='seeBig(this)'/>"+
						"</div>"+
						"</div>";
					img = img + "<img class='img' src='"+src+"'>";
				}
				count = count + 13;
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
	</div>
	<script type="text/javascript" src="js/scrolltopcontrol.js"></script></p>
	<div style="height:1000px;"></div>
</body>
</html>