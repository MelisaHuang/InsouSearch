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
<link rel="stylesheet" type="text/css" href="css/style-photoShow.css">
<link rel="stylesheet" type="text/css" href="css/searchBox.css">
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>

<title>Insou 结果展示页</title>
</head>
<body>
	<div class="showTop">
		<div id="search_box" class="sb_sform" role="search">
			<div class="search_logo">
				<img src="images/logo.png">
			</div>
			<div class="search_controls">
				<form id="sform" action="content.jsp" onsubmit="var id = _ge('hpinsthk').getAttribute('h'); return si_T(id);">
					<div class="sform_box">
						<input id="sform_q" class="sform_qq" type="search" name="q" title="输入搜索" value="" maxlength="100">
						<input id="sform_go" class="sform_go" type="submit" name="go" title="搜索" value="确定" tabindex="0">
					</div>
				</form>
			</div>
			</div>
		</div>
	</div>
	<div class="imgContainer">
		<!--大图-->
		<div class="detailImg" > 
			<a id="detailImg-pre">&lt;</a>
			<div id="detailImg-box" class="box"> </div>
			<a id="detailImg-next">&gt;</a> 
		</div>
		<!--小图-->
		<div class="smallImg"> 
			<a id="smallImg-pre"></a>
			<div id="smallImg-box" class="box">
				<ul id="smallImg-ul" class="imgUl">
				</ul>
			</div>
			<a id="smallImg-next"></a> 
		</div>
	</div>
	<script type="text/javascript" src="js/photoShow-transvert.js"></script>
	<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
		<center>
			<p>Copyright ©2015 Insou 团队 版权所有<br>
湖南大学软件工程 | 邮政编码：410082 | 电话：800-820-8820 | 传真：0731-1314918        </p>
		</center>
	</div>
</body>
</html>
