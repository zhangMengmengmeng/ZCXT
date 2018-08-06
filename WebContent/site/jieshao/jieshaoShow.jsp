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
	
	<style type="text/css">
	</style>
	<link href="css/bgcolor.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
			body
			  {
			  background-color:#F0F8FF;
			  }
	</style>
	<script language="javascript">
    </script>
  </head>
  
  <body>
	
	<div id="container">
    	<jsp:include flush="true" page="/site/inc/head.jsp"></jsp:include>
		
		
		
		
            
        <div class="cls10" style="height: 1px;"></div>
       	<div id="newest_box">
           	<div class="hd">
                   <div class="title">
                       <a href="#">企业介绍</a>
                   </div>
           	</div>
            <div style="margin-left: 12px;margin-right: 12px;margin-top: 15px;">
                 <c:out value="${requestScope.jieshao.neirong}" escapeXml="false"></c:out>
            </div>
        </div>
        
           
        
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
