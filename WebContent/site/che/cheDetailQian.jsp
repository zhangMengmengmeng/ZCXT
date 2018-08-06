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
	<link href="css/bgcolor.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
			body
			  {
			  background-color:#F0F8FF;
			  }
	</style>
	<style type="text/css">
	</style>
	
	<script language="javascript">
	    function yuyueAdd(cheId)
	    {
	           <c:if test="${sessionScope.userType !=1}">
	                alert("请先登录");
	           </c:if>
	           <c:if test="${sessionScope.userType ==1}">
	                var url="<%=path %>/site/yuyue/yuyueAdd.jsp?cheId="+cheId;
	                var ret = window.showModalDialog(url,"","dialogWidth:600px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	                window.location.reload();
	           </c:if>
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
                       <a href="#">信息详情</a>
                   </div>
           	</div>
            <div style="margin-left: 12px;margin-right: 12px;">
                 <br/> 
                                                            车型：<c:out value="${requestScope.che.chexing}" escapeXml="false"></c:out>
                 <br/> <br/>
                                                            品牌：<c:out value="${requestScope.che.pinpai}" escapeXml="false"></c:out>
                 <br/> <br/>
                 <center><img style="border:1px solid  #CCCCCC;" src="<%=path %>/${che.fujian }" height="300" width="400"/></center>
                 <br/><br/>
                                                            参数介绍：<c:out value="${requestScope.che.beizhu}" escapeXml="false"></c:out>
                 <br/><br/>
                                                           日租:<c:out value="${requestScope.che.rizu}" escapeXml="false"></c:out>
                 <br/><br/>
                                                           状态:<c:out value="${requestScope.che.zt}" escapeXml="false"></c:out> 
                 <br/><br/>
                 <input type="button" value="预约" style="width: 100px;height: 30px;"onclick="yuyueAdd(${requestScope.che.id })" />                                                                         
            </div>
        </div>
        
           
        
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
