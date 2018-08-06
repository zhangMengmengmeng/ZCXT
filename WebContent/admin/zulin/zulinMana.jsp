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
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function zulinDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/zulinDel.action?id="+id;
               }
           }
           
           function zulinAdd()
           {
                 var url="<%=path %>/admin/zulin/zulinAdd.jsp";
				 window.location.href=url;
           }
           
           function huanche(id)
           {
               if(confirm('您确定还车吗？'))
               {
					var strUrl = "<%=path %>/admin/zulin/huanche.jsp?id="+id;
					var ret = window.showModalDialog(strUrl,"","dialogWidth:600px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
                    window.location.reload();
               }
           }
           
           function userDetail(userId)
           {
				var strUrl = "<%=path %>/userDetail.action?userId="+userId;
				var ret = window.showModalDialog(strUrl,"","dialogWidth:980px; dialogHeight:200px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="42" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">车辆信息</td>
					<td width="10%">会员信息</td>
					<td width="10%">起租时间</td>
					
					<td width="10%">押金信息</td>
					<td width="10%">备注信息</td>
					<td width="7%">是否还车</td>
					<td width="8%">还车时间</td>
					
					<td width="7%">租车费用</td>
					<td width="8%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.zulinList}" var="zulin" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">${sta.index+1}</td>
					<td bgcolor="#FFFFFF" align="center">${zulin.che.chexing}</td>
					<td bgcolor="#FFFFFF" align="center"><a href="#" onclick="userDetail(${zulin.userId})" style="color: red">会员信息</a></td>
					<td bgcolor="#FFFFFF" align="center">${zulin.kaishishijian}</td>
					
					<td bgcolor="#FFFFFF" align="center">${zulin.yajin}</td>
					<td bgcolor="#FFFFFF" align="center">${zulin.beizhu}</td>
					<td bgcolor="#FFFFFF" align="center">${zulin.shifouhuan}</td>
					<td bgcolor="#FFFFFF" align="center">${zulin.jieshushijian}</td>
					
					<td bgcolor="#FFFFFF" align="center">
					   <c:if test="${zulin.feiyong==0}">
					       &nbsp;
					   </c:if>
					   <c:if test="${zulin.feiyong !=0}">
					       ${zulin.feiyong}
					   </c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <input type="button" value="删除" onclick="zulinDel(${zulin.id})"/>
					   <input type="button" value="还车" onclick="huanche(${zulin.id})"/>
				    </td>
				</tr>
				</c:forEach>
			</table>
			
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加租赁信息" style="width: 120px;" onclick="zulinAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
