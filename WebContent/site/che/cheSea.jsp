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
	<link href="css/bgcolor.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
			body
			  {
			  background-color:#F0F8FF;
			  }
	</style>
	
	
	<script language="javascript">
		    function ccc()
		    {
		        
		        document.form1.submit();
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
                       <a href="#"></a>
                   </div>
           	</div>
            <div class="news_content_box content_box" style="height: 350px;">
                   <br/>
               	   <FORM name="form1" method="post" action="<%=path %>/cheRes.action"> 
				   <TABLE align="center" border="0">
				        <tr align='center'>
							<td style="width: 60px;" align="center">
								车型：									    
							</td>
							<td align="left">
								<input type="text" name="chexing" style="width: 300px;"/>
							</td>
						</tr>
						
						<tr align='center'>
						   <td style="width: 60px;" align="left"></td>
						   <td align="left">
						      <input type="button" value="查询" style="width: 70px;" onclick="ccc()"/>&nbsp; 
						      <input type="reset" value="重置" style="width: 70px;"/>&nbsp;	
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
