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
	
	<script type="text/javascript" src="/wuye/js/jquery.min.js"></script>
		
	<style type="text/css">
		body
			  {
			  background-color:#F0F8FF;
			  }
	</style>

	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script language="javascript">
		function c()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入账号");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,1,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("登录成功");
		        window.location.href="<%=path %>/site/default.jsp";
		    }
		}
    </script>
  </head>
  
  <body>
	
	<div id="container">
    	<jsp:include flush="true" page="/site/inc/head.jsp"></jsp:include>
		
		
		
		
            
        <div class="cls10" style="height: 1px;"></div>
       	<div id="newest_box">
           	<div class="hd">
                   <div class="title">
                       <a href="#">会员登录</a>
                   </div>
           	</div>
            <div class="news_content_box content_box">
                   <br/>
               	   <FORM name="ThisForm" method="post" action=""> 
				   <TABLE align="center">
				        <tr align='center'>
							<td style="width: 60px;" align="left">
								账&nbsp;&nbsp;&nbsp;&nbsp;号：									    
							</td>
							<td align="left">
								<input type="text" name="userName" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="left">
								密&nbsp;&nbsp;&nbsp;&nbsp;码：										    
							</td>
							<td align="left">
								<input type="password" name="userPw" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
						   <td style="width: 60px;" align="left"></td>
						   <td align="left">
						      <input type="button" value="登录" style="width: 70px;" onclick="c()"/>&nbsp; 
						      <input type="reset" value="重置" style="width: 70px;"/>&nbsp;	
						      <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
						   </td>
						</tr>
				   </TABLE>
			   </FORM>
            </div>
        </div>
        
           
        
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
