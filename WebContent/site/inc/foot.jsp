<%@ page language="java" pageEncoding="UTF-8"%>

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
	
	 <script language="javascript">
		
     </script>
  </head>
  
  <body>
	
        <div class="cls10" style="height: 5px;"></div>
        <div id="footer">
        	<p><a href="#">版权归属</a>| <a href="#">联系我们</a> | <a href="#">关于网站</a> | <a href="#">站内导航</a> | <a href="<%=path %>/login.jsp">系统后台</a></p>
        </div>
  </body>
</html>
