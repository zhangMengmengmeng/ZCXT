<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
            function ccc()
		    {
		        if(document.form1.userName.value=="")
		        {
		            alert("请输入账号");
		            return false;
		        }
		        if(document.form1.userPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        if(document.form1.userRealname.value=="")
		        {
		            alert("请输入姓名");
		            return false;
		        }
		        if(document.form1.userPw.value!=document.form1.userPw1.value){
		        	alert("两次密码输入不一致");
		        	return false;
		        }
		        if(document.form1.userName.value.length<6||document.form1.userPw.value.length<6){
		        	alert("用户名或密码不能能低于六位");
		        }else{
			        document.form1.submit();
			    }
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/userAdd.action" name="form1" method="post">
				     <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="4" background="<%=path %>/img/tbg.gif">&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						        账号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="text" name="userName" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="password" name="userPw" value="000000" style="width: 300px;"/>(默认：000000)
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         确认密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userPw1"  style="width: 300px;"/>
						    </td>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userRealname" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         性别：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="radio" name="userSex" value="男" checked="checked"/>男
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="userSex" value="女"/>女
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         年龄：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userAge" style="width: 300px;" value="20" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         住址：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userAddress" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         电话：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userTel" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         驾照编号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userJiazhao" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         身份证号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="userCard" style="width: 300px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						         会员等级：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <select name="userLeixing"  style="width: 304px;">
						            <option value="普通会员">普通会员</option>
						            <option value="中级会员">中级会员</option>
						            <option value="高级会员">高级会员</option>
						        </select>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="center">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="ccc()"/>&nbsp;  
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
