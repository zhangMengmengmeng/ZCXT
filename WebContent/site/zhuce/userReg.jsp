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
	
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
	<style type="text/css">
			body
			  {
			  background-color:#F0F8FF;
			  }
	</style>
	
	
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
		       alert(1);    
		        $.ajax({
                    url:'<%=path %>/userReg.action',
                    type:"post",
                    data : {
                    	userName : document.form1.userName.value,
                    	userPw : document.form1.userPw.value,
                    	userRealname : document.form1.userRealname.value,
					},
                    dataType:"json",
                    success:function(data){
                        if(data == true || data == "true"){
                        	alert("注册成功");
                        }else{
                        	alert("用户名重复");
                        }
                    }
                });
		        alert(2);
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
                       <a href="#">会员注册</a>
                   </div>
           	</div>
            <div class="news_content_box content_box">
                   <br/>
                   <!--  
               	   <FORM name="form1" method="post" action="<%=path %>/userReg.action"> 
               	   --> 
               	   <FORM name="form1" method="" action=""> 
				   <TABLE align="center" border="0">
				        <tr align='center'>
							<td style="width: 60px;" align="center">
								账号：									    
							</td>
							<td align="left">
								<input type="text" name="userName" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								密码：										    
							</td>
							<td align="left">
								<input type="password" name="userPw" style="width: 300px;"/>(默认：000000)
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								姓名：										    
							</td>
							<td align="left">
								<input type="text" name="userRealname" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								性别：										    
							</td>
							<td align="left">
								<input type="radio" name="userSex" value="男" checked="checked"/>男
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="userSex" value="女"/>女
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								年龄：										    
							</td>
							<td align="left">
								<input type="text" name="userAge" value="20" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
						    </td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								住址：										    
							</td>
							<td align="left">
								<input type="text" name="userAddress" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								电话：										    
							</td>
							<td align="left">
								<input type="text" name="userTel" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								驾照编号：										    
							</td>
							<td align="left">
								<input type="text" name="userJiazhao" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
							<td style="width: 60px;" align="center">
								身份证号：										    
							</td>
							<td align="left">
								<input type="text" name="userCard" style="width: 300px;"/>
							</td>
						</tr>
						<tr align='center'>
						   <td style="width: 60px;" align="left"></td>
						   <td align="left">
						      <input type="button" value="注册" style="width: 70px;" onclick="ccc()" />
						      <input type="reset" value="重置" style="width: 70px;"/>
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
