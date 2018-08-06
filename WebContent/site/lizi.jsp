<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<script type="text/javascript" src="/wuye/js/jquery.min.js"></script>
	<link href="css/bgcolor.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		body{font-family: "微软雅黑", "宋体";margin-top: 5px;}
		#container{ margin:0px auto;font-size:12px;padding:0px;width:800px;background:#FFF;}
		#f{background-image:-webkit-gradient(linear,left top,left bottom,from(#f1f1f1),to(#fff)); position:fixed; width:100%;height:100%;top:0px;left:0px;z-index:-9999}
		#header{height:130px;background:#00F;-webkit-box-shadow:0px 3px 0px rgba(33,33,33,0.4);background:url(<%=path %>/images/h.jpg);}
		.cls10{height:1px;clear:both;}
		#nav {height: 40px;display: block;padding: 0px;width: 800px;margin-top: 0px;margin-right: auto;margin-bottom:8px;margin-left: auto;background-color: #E8E8E8;background-image:-webkit-gradient(linear,left top,left bottom,from(#999),to(#fff));border-radius:5px;-webkit-box-shadow:0px 3px 10px rgba(33,33,33,0.4);}
		#nav ul {list-style: none;padding: 0;margin: 0;}
		#nav ul li {float: left;overflow: hidden;position: relative;line-height: 40px;text-align: center;}
		#nav ul li a {position: relative;display: block;width: 90px;height: 40px;font-family: "微软雅黑", "宋体";font-size: 12px;text-decoration: none;cursor: pointer;color: #000;}
		#nav ul li a span {position: absolute;left: 0;width: 90px;}
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
     </script>
  </head>
  
  <body>
	
	<div id="container">
    	<div id="header"></div>
        <div class="cls10" style="height: 5px;"></div>
        <div id="nav">
			<ul>
                <li><a href="#" style="font-size: 15px;">导航1</a></li>
                <li><a href="#" style="font-size: 15px;">导航2</a></li>
                <li><a href="#" style="font-size: 15px;">导航3</a></li>
                <li><a href="#" style="font-size: 15px;">导航4</a></li>
			</ul>
		</div>
		
		
		
		
		
		
		
        <div id="hots">
           	<div id="hots_l">
               	<jsp:include flush="true" page="/site/rili/rili.jsp"></jsp:include>
            </div>
            <div id="hots_r">
            	<div id="hots_head">
                	<div id="hots_head_title">
                    	<a href ="热门">最新信息</a>
                    </div>
                </div>
                <div class="content_box">
                	<ul>
                    	<li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                        <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                        <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                        <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                        <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                        <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    </ul>
                </div>
            </div>
        </div>
            
            
            
            
            
            
            
        <div class="cls10" style="height: 6px;"></div>
        <div id="gallery">
        	<div class="hd">
            	<div class="title">
                	<a href="#">新闻资讯</a>
                </div>
            </div>
            <div id="images">
            	<a href="#"><img src="<%=path %>/images/s1.jpg" height="150" width="183" title="纸坦克"/></a>&nbsp;
            	<a href="#"><img src="<%=path %>/images/s1.jpg" height="150" width="183" title="纸坦克"/></a>&nbsp;
            	<a href="#"><img src="<%=path %>/images/s1.jpg" height="150" width="183" title="纸坦克"/></a>&nbsp;
            	<a href="#"><img src="<%=path %>/images/s1.jpg" height="150" width="183" title="纸坦克"/></a>&nbsp;
            </div>
        </div>
            
            
            
            
            
            
            
            
        <div class="cls10" style="height: 10px;"></div>
       	<div id="newest_box">
           	<div class="hd">
                   <div class="title">
                       <a href="#">111111111</a>
                   </div>
           	</div>
            <div class="news_content_box content_box">
               	<ul>
                   	<li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-Vddddddddddddddddddddddddddddddddddddddddddd导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                </ul>
            </div>
        </div>
        
        
        
        
        
        
        
        
        <div class="cls10" style="height: 10px;"></div>
       	<div id="newest_box">
           	<div class="hd">
                   <div class="title">
                       <a href="#">22222222222</a>
                   </div>
           	</div>
            <div class="news_content_box content_box">
               	<ul>
                   	<li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-Vddddddddddddddddddddddddddddddddddddddddddd导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                    <li><span>10-06</span><a href="#" title="白杨18-V导弹详解,无与伦比的巨大威慑力">白杨18-V导弹详解,无与伦比的巨大威慑力</a></li>
                </ul>
            </div>
        </div>
        
        
        
           
        
        
        
        <div class="cls10" style="height: 5px;"></div>
        <div id="footer">
        	<p><a href="#">版权归属</a>| <a href="#">联系我们</a> | <a href="#">关于网站</a> | <a href="#">站内导航</a> | <a href="<%=path %>/login.jsp">系统后台</a></p>
        </div>
    </div>
</body>
</html>
