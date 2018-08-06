<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
	
	<style type="text/css">
		body{font-family: "微软雅黑", "宋体";margin-top: 5px;}
		#container{ margin:0px auto;font-size:12px;padding:0px;width:800px;background:#FFF;}
		#f{background-image:-webkit-gradient(linear,left top,left bottom,from(#f1f1f1),to(#fff)); position:fixed; width:100%;height:100%;top:0px;left:0px;z-index:-9999}
		#header{height:130px;background:#00F;-webkit-box-shadow:0px 3px 0px rgba(33,33,33,0.4);background:url(<%=path %>/images/h.jpg);}
		.cls10{height:1px;clear:both;}
		#nav {height: 40px;display: block;padding: 0px;width: 800px;margin-top: 0px;margin-right: auto;margin-bottom:8px;margin-left: auto;background-color: #E8E8E8;background-image:-webkit-gradient(linear,left top,left bottom,from(#999),to(#fff));border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);}
		#nav ul {list-style: none;padding: 0;margin: 0;}
		#nav ul li {float: left;overflow: hidden;position: relative;line-height: 40px;text-align: center;}
		#nav ul li a {position: relative;display: block;width: 80px;height: 40px;font-family: "微软雅黑", "宋体";font-size: 12px;text-decoration: none;cursor: pointer;color: #000;}
		#nav ul li a span {position: absolute;left: 0;width: 80px;}
		#nav ul li a span.out {top: 0px;}
		#nav ul li a span.over,#nav ul li a span.bg {top: -40px;}
		#nav ul li a span.over {color: #FFF;}
		#nav ul li span.bg {height: 40px;background-image: url(<%=path %>/images/bg_over.gif);background-repeat: no-repeat;background-position: center center;}
		#hots_l{width:230px;height:200px;float:left; position:relative;border:1px solid #ddd;border-radius:5px;border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);}
		#float_box{height:30px; width:100%;position:absolute;bottom:0px; right:0px; background:#000;padding:0px;margin:0px; opacity: 0.6;border:1px solid #ddd;}
		#float_text{float:left;padding-left:10px;}
		#float_text a{line-height:32px;color:#ddd; text-decoration:none;}
		#float_text a:hover{text-decoration:none;color:#fff;}
		#float_index{ float:right;padding:0px;margin:0px; list-style:none;}
		#float_index li{ width:18px; height:18px;margin: 6px 0px;background:url(<%=path %>/images/none.png) no-repeat center;float:left;}
		#float_index li:hover{background:url(<%=path %>/images/hover.png) no-repeat center; cursor:pointer;}
		.on {background:url(<%=path %>/images/cur.png) no-repeat center !important;}
		#hots_r{background:#fff;width:561px;height:200px;float:right;position:relative;border:1px solid #ddd;border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);}
		#hots_head{height: 28px;width:100%;line-height: 27px;background: -webkit-gradient(linear,left top,left 25,from(#fff),color-stop(100%,#f6f6f6),to(#f6f6f6));border-bottom: 1px solid #ddd;border-radius: 5px 5px 0 0;}
		#hots_head_title{padding-left:10px;float:left;font-size:14px;}
		#hots_head_title a{color:#555;border-left:5px #ddd solid;padding-left:4px;text-decoration:none;line-height:29px;}
		#hots_head_title a:hover{border-left:5px #1184bc solid;color:#333;}
		#gallery{ position:relative;height:200px;border:1px solid #ddd;border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);background:#FFF;}
		.hd{height: 28px;width:100%;line-height: 27px;background: -webkit-gradient(linear,left top,left 25,from(#fff),color-stop(100%,#f6f6f6),to(#f6f6f6));border-bottom: 1px solid #ddd;border-radius: 5px 5px 0 0;}
		.hd .title{padding-left:10px;float:left;font-size:14px;}
		.hd .title a{color:#555;border-left:5px #ddd solid;padding-left:4px;text-decoration:none;line-height:29px;}
		.hd .title a:hover{border-left:5px #1184bc solid;color:#333;}
		#g_left{ position:absolute;left:10px;top:65px;width:27px;height:92px;background:url(<%=path %>/images/a_l.png) no-repeat;}
		#g_left:hover{background:url(<%=path %>/images/o_l.png); cursor:pointer;}
		#g_right{ position:absolute;right:10px;top:65px;width:27px;height:92px;background:url(<%=path %>/images/a_r.png) no-repeat;}
		#g_right:hover{background:url(<%=path %>/images/o_r.png); cursor:pointer;}
		#images{height:150px; position:absolute;width:100%;left:10px;top:40px;right: 1px;}
		#images ul{padding:0px;margin:0px;list-style:none;}
		#images ul li{ float:left;margin-right:0px;margin-left:12px;}
		#images img{border:1px solid #ddd;}
		#newest_box{ position:relative;float:left;height:100%;width:800px;border:1px solid #ddd;border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);background:#FFF;}
		#mostest_box{ position:relative;float:right;height:270px;width:480px;border:1px solid #ddd;border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);background:#FFF;}
		#footer{height:30px;}
		#footer p{ line-height:30px;font-size:12px; text-align:center}
		#footer p a{ line-height:30px;font-size:12px;color:#66ccff;text-decoration:none;}
		#footer p a:hover{color:#F00;}
		.content_box{width:100%;}
		.content_box ul{padding:0px;margin:0px;padding-left:30px;margin-top:15px;font-size:14px;padding-right:10px;}
		.content_box ul li{ margin-bottom:5px;padding:0px;}
		.content_box ul li a{ text-decoration:none;color:#6e572a;}
		.content_box ul li a:hover{text-decoration:underline;}
		.content_box ul li span{float: right;font-size: 12px;color: #b9ad9e;height: 20px;line-height: 20px;text-align: center;font-family: Arial, Helvetica, sans-serif;}
	</style>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script language="javascript">
		$(document).ready(function() 
		{
			$("#nav li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );

			
			$("#nav li a").each(function()
			{
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#nav li a").hover(function()
			{
				
				$(".out",	this).stop().animate({'top':	'40px'},	250); // move down - hide
				$(".over",	this).stop().animate({'top':	'0px'},		250); // move down - show
				$(".bg",	this).stop().animate({'top':	'0px'},		120); // move down - show

			}, function() {
				
				$(".out",	this).stop().animate({'top':	'0px'},		250); // move up - show
				$(".over",	this).stop().animate({'top':	'-40px'},	250); // move up - hide
				$(".bg",	this).stop().animate({'top':	'-40px'},	120); // move up - hide
			});
			
			$("#float_index li").click(function(){
				$("#float_index li").removeClass('on');
				$(this).addClass('on');
			});
		});
		
		
		function userReg()
        {
             var url="<%=path %>/site/zhuce/userReg.jsp";
             window.location.href=url;
        }
		
        function userLogout()
		{                                                                                         
			 document.getElementById("indicator").style.display="block";
			 loginService.userLogout(callback_logout);
		}
		
		function callback_logout(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("成功退出系统");
		        window.location.href="<%=path %>/site/default.jsp";
		    }
		}
		
        
        function guanlizhongxin()
		{
		    var targetWinUrl="<%=path %>/admin/index.jsp";
			var targetWinName="newWin";
			var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
			var new_win=window.open(targetWinUrl,targetWinName,features);
		}
    </script>
  </head>
  
  <body>
    	<div id="header"></div>
        <div class="cls10" style="height: 5px;"></div>
        <div id="nav">
			<ul>
                <li><a href="<%=path %>/site/default.jsp" style="font-size: 15px;">网站首页</a></li>
                <li><a href="<%=path %>/jieshaoShow.action" style="font-size: 15px;">企业介绍</a></li>
                <li><a href="<%=path %>/cheSuoyou.action" style="font-size: 15px;">车型展示</a></li>
                <li><a href="<%=path %>/site/che/cheSea.jsp" style="font-size: 15px;">车型搜索</a></li>
                <li><a href="#" onclick="userReg()" style="font-size: 15px;">会员注册</a></li>
                
                <c:if test="${sessionScope.userType !=1}">
                <li><a href="<%=path %>/site/denglu/userLogin.jsp" style="font-size: 15px;">会员登录</a></li>
                </c:if>
               
                <c:if test="${sessionScope.userType ==1}">
                <li> 欢迎你：${sessionScope.user.userName}</li>
                <li><a href="#" onclick="userLogout()" style="font-size: 15px;">退出系统</a></li>
                </c:if>
                
                <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/> 
			</ul>
		</div>
</body>
</html>
