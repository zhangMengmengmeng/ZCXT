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
		
		
		
		
		
		
		
        <div id="hots">
           	<div id="hots_l">
               	<jsp:include flush="true" page="/site/rili/rili.jsp"></jsp:include>
            </div>
            <div id="hots_r">
            	<div id="hots_head">
                	<div id="hots_head_title">
                    	<a href ="热门">最新发布信息</a>
                    </div>
                </div>
                <div class="content_box">
                	<ul>
                	    <c:forEach items="${requestScope.gonggaoList}" var="gonggao" varStatus="ss">
                    	<li><span>${gonggao.gonggaoData }</span><a href="<%=path %>/gonggaoDetailQian.action?gonggaoId=${gonggao.gonggaoId }">${gonggao.gonggaoTitle }</a></li>
                    	</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
            
            
            
            
            
            
            
        <div class="cls10" style="height: 6px;"></div>
        <div id="gallery">
        	<div class="hd">
            	<div class="title">
                	<a href="#">最新车型</a>
                </div>
            </div>
            <div id="images">
                <c:forEach items="${requestScope.cheList}" var="che" varStatus="ss">
            	<a href="<%=path %>/cheDetailQian.action?id=${che.id }"><img style="border:1px solid  #CCCCCC;" src="<%=path %>/${che.fujian }" height="150" width="183"/></a>&nbsp;
            	</c:forEach>
            </div>
        </div>
            
            
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
