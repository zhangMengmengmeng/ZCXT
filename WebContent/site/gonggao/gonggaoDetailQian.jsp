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
                       <a href="#">信息详情</a>
                   </div>
           	</div>
            <div style="margin-left: 12px;margin-right: 12px;">
                 <br/>  <br/>                                        
                                                            信息标题：<c:out value="${requestScope.gonggao.gonggaoTitle}" escapeXml="false"></c:out>
                 <br/><br/>
                 <center><img style="border:1px solid  #CCCCCC;" src="<%=path %>/${gonggao.fujian }" height="300" width="400"/></center>
                 <c:out value="${requestScope.gonggao.gonggaoContent}" escapeXml="false"></c:out>
                 <br/><br/>
                                                           发布时间<c:out value="${requestScope.gonggao.gonggaoData}" escapeXml="false"></c:out>
            </div>
        </div>
        
           
        
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
