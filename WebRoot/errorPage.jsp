<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <base href="<%=basePath%>">
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/searchBox.css">
		<link rel="stylesheet" type="text/css" href="css/errorPage.css">
		<title>页面搜不到哦...</title>
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
				<form id="sform" action="content.jsp" onsubmit="var id = _ge('hpinsthk').getAttribute('h'); return si_T(id);">
					<div class="sform_box">
						<input id="sform_q" class="sform_qq" type="search" name="q" title="输入搜索" value="" maxlength="100">
						<input id="sform_go" class="sform_goo" type="submit" name="go" title="搜索" value="确定" tabindex="0">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="main">
		<div class="main-er">
			<center><img src="images/error.png"></center>
		</div>
		<div class="foot-Bar"> 
			<p>
				<span style="color:#333;font-size: 15px;"> 热门搜索：</span>
				<span class="foot-reco"><a href="#">欧美时尚</a></span>
				<span class="foot-reco"><a href="#">维多利亚的秘密</a></span>
				<span class="foot-reco"><a href="#">2016春夏时装周</a></span>
				<span class="foot-reco"><a href="#">欧美时尚杂志</a></span>
			</p>
			<div class="foot-Bar-pho">
				<div class="b-pho bs1"><img src="images/Europe-F.jpg"></div>
				<div class="b-pho bs2"><img src="images/Europe-vs.jpg"></div>
				<div class="b-pho bs3"><img src="images/Europe-Fz.jpg"></div>
				<div class="b-pho bs4"><img src="images/Europe-d.jpg"></div>
				<div class="b-pho bs5"><img src="images/Europe-m.jpg"></div>
			</div>
		</div>
	</div>

</body>
</html>
