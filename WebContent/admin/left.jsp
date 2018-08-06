<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	-->
	</style>
	</head>

	<body>
	<body bgcolor="#F0F8FF">
		<table width="173" height="100%" border="0" cellpadding="0"
			cellspacing="0" style="table-layout:fixed;">
			<tr>
				<td
					style="width:4px; background-image:url(<%=path%>/img/main_16.gif)">
					&nbsp;
				</td>
				<td width="169" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="20" background="<%=path%>/img/main_11.gif">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/userinfo/userPw.jsp" target="I2" style="text-decoration:none">修改登陆密码</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/gonggaoMana.action" target="I2" style="text-decoration:none">信息发布管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/cheMana.action" target="I2" style="text-decoration:none">车辆信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/che/cheAdd.jsp" target="I2" style="text-decoration:none">添加车辆信息</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/userMana.action" target="I2" style="text-decoration:none">会员信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/admin/user/userAdd.jsp" target="I2" style="text-decoration:none">添加会员信息</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/yuyueMana.action" target="I2" style="text-decoration:none">预约信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/zulinMana.action" target="I2" style="text-decoration:none">租赁信息管理</a>
									</td>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10">
								<table>
									<td>
										&nbsp;&nbsp;&nbsp;
										<img src="<%=path%>/img/left_1.gif" width="31" height="31">
									</td>

									<td style="font-size:12px">
										<a href="<%=path %>/jieshaoMana.action" target="I2" style="text-decoration:none">企业介绍管理</a>
									</td>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
