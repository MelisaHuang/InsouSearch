<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
  <meta charset="UTF-8">
  <title>Insou 注册</title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style-reg.css" media="screen" type="text/css" />

</head>

<body>
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<div id="window" style="display:none;">
  <div class="page page-front">  
    <div class="page-content">
	<form name="addUserform" method="post" action="controller/UserServlet">
	<input name="operation" type="hidden" id="operation" value="add">
      <div class="input-row">
        <label class="label fadeIn">用户名</label>
        <input name="username" id="username" type="text" data-fyll="pineapple" class="input fadeIn delay1"/>
      </div>
      <div class="input-row">
        <label class="label fadeIn">邮箱</label>
        <input  name="email" type="email data-fyll="pineapple" class="input fadeIn delay1"/>
      </div>
      <div class="input-row">
        <label class="label fadeIn delay2">密码</label>
        <input name="password" id="password" type="password" data-fyll="hackmeplease" class="input fadeIn delay3"/>
      </div>
      <div class="input-row">
        <label class="label fadeIn delay2">确认密码</label>
        <input id="password" type="password" data-fyll="hackmeplease" class="input fadeIn delay3"/>
      </div>
      <div class="input-row perspective">
        <button name="Submit" id="submit" class="button load-btn fadeIn delay4"><span class="default"><i class="ion-arrow-right-b"></i>注册</span>
        </button>
      </div>
      <div class="no-id">
        <span class="no-block fadeIn">
          <a href="index.jsp" class="no-a">返回</a>
          |
          <a href="Login.jsp" class="no-b">已有账户？</a>
        </span>
        
      </div>
	</form>  
    </div>
  </div>
  
</div>
<div class="browser-warning hidden">Glitchy or weird animation? Let it play through once, then press Replay.</div>

  <script src='js/jquery-1.10.1.min.js'></script>
  <script src="js/log-index.js"></script>

</body>

</html>