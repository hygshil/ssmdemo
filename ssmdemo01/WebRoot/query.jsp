<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">
	
	<style type="text/css">
		table{
			border-collapse:collapse;
			padding:0;
			width:800px;
			height:80px;
		}
		
	</style>
  </head>
  
  <body>
  <h2 align="center">业务列表</h2>
    <table border="2px" bordercolor="red" align="center">
    	<tr>
    		<td>业务序号</td>
    		<td>排队号</td>
    		<td>业务类别</td>
    		<td>备注信息</td>
    		<td>详情编号</td>
    		<td>详情名称</td>
    		<td>办理人</td>
    		<td>操作内容</td>
    	</tr>
    	<c:forEach items="${sessionScope.t_businesss }" var="t">
    	<tr>
    		<td>${t.bId}</td>
    		<td>${t.bNum }</td>
    		<td>${t.bType }</td>
    		<td>${t.bMark }</td>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td><a href="/ssmdemo01/add2.jsp">办理业务</a> <a href="/ssmdemo01/T_business/moveid?bId=${t.bId }">删除业务</a></td>
    	</tr>
    	</c:forEach>
    	<tr align="center">
    	<td colspan="8"><a href="/ssmdemo01/add.jsp">新增业务</a></td>
    	</tr>
    </table>
  </body>
</html>
