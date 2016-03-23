<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=1366px,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="http://code.jquery.jquery.mobile-1.3.2.min.css">
	<link rel="stylesheet" type="text/css" href="css/style-main.css">
    <link rel="stylesheet" type="text/css" href="css/zzsc.css">
    <link rel="stylesheet" type="text/css" href="css/change-photo.css">
    <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<title>Insou 搜索</title>
	
</head>
<body class="all" >
    <div id="top-head">
    	<ul id="s_hd" role="navigation">
    		<li>
    			<a href="./index.jsp">Insou首页</a>
    		</li>
    		<li>
    			<a href="./Login.jsp">登录</a>
    		</li>
    		<li>
    			<a href="./Register.jsp">注册</a>
    		</li>
    		<li>
    			<a href="#" class="but">换肤</a>
    		</li>
    	</ul>
    </div>
    <div id="hf">
        <div class="con">
            <img src="images/left.png" class="left"/>
            <img src="images/right.png" class="right"/>
            <div class="scroll">
                <div class="scrollCon">
                    <ul>
                        <li><img src="images/cbg1-1.jpg"/></li>
                        <li><img src="images/cbg2-1.jpg"/></li>
                        <li><img src="images/cbg3-1.jpg"/></li>
                        <li><img src="images/cbg5-1.jpg"/></li>
                        <li><img src="images/cbg6-1.jpg"/></li>
                        <li><img src="images/cbg3-1.jpg"/></li>
                        <li><img src="images/cbg5-1.jpg"/></li>
                        <li><img src="images/cbg7-1.jpg"/></li>
                        <li><img src="images/cbg3-1.jpg"/></li>
                        <li><img src="images/cbg5-1.jpg"/></li>
                        <li><img src="images/cbg6-1.jpg"/></li>
                        <li><img src="images/cbg7-1.jpg"/></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/change-bg.js">
    </script>
    <script type="text/javascript">
		function over(){
		document.getElementById("contain").style.innerHTML="";
		}
		function out(){
			document.getElementById("contain").style.innerHTML="请按Ctrl+D收藏";
		}
	</script>
	<div id="main">
		<div id="search_box" class="sb_sform" role="search">
			<div class="search_logo"></div>
			<div class="search_controls">
				<form id="sform" action="controller/KeywordServlet" method="post">
					<div class="sform_box">
						<input id="sform_q" class="sform_qq" type="search" name="keyword" title="输入搜索" value="" placeholder="2016春夏时装周" maxlength="100">
						<input id="sform_go" class="sform_goo" type="submit" name="Submit" title="搜索" value="Insou" tabindex="0">
					</div>
				</form>
			</div>
		</div>
		<div id="container">
			<div id="wrap-container" class="clearfix"></div>
		</div>
		<div class="pho_body">
		
		  <ul class="bannerHolder">
		    <li></li>
		    <li>
		      <div class="banner"> <a href="SearchResult.jsp?keywordname=FuZhuangSheJiShi" target="_blank"> <img height="125" width="125" alt="Mail Chimp" src="images/season22.jpg" /> </a>
		        <p class="companyInfo">设计师</p>
		        <div class="cornerTL"></div>
		        <div class="cornerTR"></div>
		        <div class="cornerBL"></div>
		        <div class="cornerBR"></div>
	          </div>
	        </li>
		    <li>
		      <div class="banner"> <a href="SearchResult.jsp?keywordname=ShiShangJiePai" target="_blank"> <img height="125" width="125" alt="Mail Chimp" src="images/season33.jpg" /> </a>
		        <p class="companyInfo">街拍</p>
		        <div class="cornerTL"></div>
		        <div class="cornerTR"></div>
		        <div class="cornerBL"></div>
		        <div class="cornerBR"></div>
	          </div>
	        </li>
		    <li>
		      <div class="banner"> <a href="SearchResult.jsp?keywordname=OuMeiShiZhuangZhou" target="_blank"> <img height="125" width="125" alt="Mail Chimp" src="images/season44.jpg" /> </a>
		        <p class="companyInfo">时装周</p>
		        <div class="cornerTL"></div>
		        <div class="cornerTR"></div>
		        <div class="cornerBL"></div>
		        <div class="cornerBR"></div>
	          </div>
	        </li>
		    <li>
		      <div class="banner"> <a href="SearchResult.jsp?keywordname=MeiNv" target="_blank"> <img height="125" width="125" alt="Mail Chimp" src="images/season55.jpg" /> </a>
		        <p class="companyInfo">模特</p>
		        <div class="cornerTL"></div>
		        <div class="cornerTR"></div>
		        <div class="cornerBL"></div>
		        <div class="cornerBR"></div>
	          </div>
		      <div class="banner"> <a href="SearchResult.jsp?keywordname=SheChiPingLogo" target="_blank"> <img height="125" width="125" alt="The Best Designs" src="images/season11.jpg" /></a>
		        <p class="companyInfo">品牌</p>
		        <div class="cornerTL"></div>
		        <div class="cornerTR"></div>
		        <div class="cornerBL"></div>
		        <div class="cornerBR"></div>
	          </div>
	        </li>
	      </ul>
	  </div>
<script type="text/javascript">
		$(document).ready(function(){

		$('.banner div').css('opacity',0.2);

		$('.banner').hover(function(){
	
			var el = $(this);
		
			el.find('div').stop().animate({width:200,height:200},'slow',function(){

				el.find('p').fadeIn('fast');
			});

		},function(){

			var el = $(this);
		
			el.find('p').stop(true,true).hide();
		
			el.find('div').stop().animate({width:60,height:60},'fast');

		}).click(function(){
		
		
			window.open($(this).find('a').attr('href'));
		
		});
	});
	</script>
	</div>
    <div style="text-align:center;margin:185px 0 0px 0;color: #ACACAC; font:normal 14px/24px 'MicroSoft YaHei';">
        <center>
            <p>Copyright ©2015 Insou 团队 版权所有<br></p>
        </center>
    </div>
</body>
</html>