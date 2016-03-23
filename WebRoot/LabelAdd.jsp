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
<title>添加标签</title>
<link rel="stylesheet" type="text/css" href="css/styles-LabelAdd.css" />
 <!--[if lt IE 9]><script type="text/javascript" src="js/excanvas.js"></script><![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tagcanvas.js"></script>
<script type="text/javascript">
 $(document).ready(function() {
   if( ! $('#myCanvas').tagcanvas({
     textColour : '#ffffff',
     outlineThickness : 1,
     maxSpeed : 0.03,
     depth : 0.75
   })) {
     // TagCanvas failed to load
     $('#myCanvasContainer').hide();
   }
   // your other jQuery stuff here...
 });
 </script>
</head>
<body>
<div class="top-logo">
  <center>
    <img src="images/logo.png">
  </center>
  </div>
<div class="all">
  <div id="page">
  <div class="words1">
    <center>
      <p>请选择感兴趣的标签</p>
    </center>
  </div>
  <div id="container" class="content clearfix">
    <center>
      <canvas width="400" height="437" id="myCanvas">
        <p>Anything in here will be replaced on browsers that support the canvas element
           浏览器上在这里的任何东西都将被替换为支持画布元素
        </p>
        <ul class="mylabel">
          <li><a href="#">Google</a></li>
          <li><a href="#">欧美</a></li>
          <li><a href="#">日韩</a></li>
          <li><a href="#">街拍</a></li>
          <li><a href="#">达人</a></li>
          <li><a href="#">Brand</a></li>
          <li><a href="#">模特</a></li>
          <li><a href="#">男装</a></li>
          <li><a href="#">FashionShow</a></li>
          <li><a href="#">Designer</a></li>
          <li><a href="#">搭配</a></li>
          <li><a href="#">Lomo</a></li>
          <li><a href="#">小清新</a></li>
        </ul>
      </canvas>
    </center>
  </div>
  <div class="words2">
    <center>
      <p><a href="#">添加完成</a></p>
    </center>
  </div>   
</div>
</div> 
</body>
</html>
