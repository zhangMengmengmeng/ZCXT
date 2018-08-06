<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        <link href="css/bgcolor.css" rel="stylesheet" type="text/css" />
        <script language="javascript">
            function check()
		    {
		        if(document.formAdd.lianxi.value=="")
		        {
		            alert("请输入您的联系方式");
		            return false;
		        }
		        var zhhcsj = document.formAdd.zbhcsj.value;
		        var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/;
		        var regExp = new RegExp(reg);
		        if(!regExp.test(zhhcsj)){
			        　　alert("时间格式不正确,正确格式为: 2014-01-01 12:00:00 ");
			        　　return false;
			        　　}
		        document.formAdd.submit();
		    } 
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/yuyueAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/img/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						               联系方式：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="lianxi"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						               备注信息：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="beizhu" size="60"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						               预约时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="yuyueshi" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())%>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						               预备还车时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name=zbhcsj />
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">&nbsp;
						        
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="cheId" value="<%=request.getParameter("cheId") %>"/>
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
