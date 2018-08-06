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
                       <a href="#">车型展示</a>
                   </div>
           	</div>
            <div style="margin-left: 12px;margin-right: 12px;margin-top: 15px;">
                 <TABLE class=main border=0 cellSpacing=2 cellPadding=2 height=115>
			         <TR>
			               <c:forEach items="${requestScope.cheList}" var="che" varStatus="sta">
			                    <c:if test="${sta.index%4==0}">
			                       </tr><tr>
			                    </c:if>
				                <TD>
				                  <TABLE onmouseover="this.style.backgroundColor='#FF6600'" onmouseout="this.style.backgroundColor=''" border=0 cellSpacing=1 cellPadding=2 width=98 bgColor=#e1e1e1 align=center height=100>
				                    <TR>
				                      <TD bgColor=#ffffff height=100 width=120 align=left>
				                        <P align="center">
				                           <A href="<%=path %>/cheDetailQian.action?id=${che.id}"><IMG border=0 align=absMiddle src="<%=path %>/${che.fujian}"  height="150" width="183"></A>
				                           <A href="<%=path %>/cheDetailQian.action?id=${che.id}"><FONT color=#ff0000>${che.chexing}</FONT></A>
				                        </P>
				                      </TD>
				                    </TR>
				                  </TABLE>
				                </TD>
			                </c:forEach>   
			         </TR>
		         </TABLE>
            </div>
        </div>
            
            
        
        
        <jsp:include flush="true" page="/site/inc/foot.jsp"></jsp:include>
    </div>
</body>
</html>
