<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h3>业务详情</h3>
    <form action="/ssmdemo01/T_detail/add" method="get">
    	业务序号:<input type="text" name="bId"><br>
    	排队号:<input type="text" name="bNum"><br>
    	业务类型:<select name="bType">
    				<option>信用卡</option>
    				<option>现金</option>
    				<option>开户</option>
    			</select><br>
    	备注信息：<textarea rows="3px" cols="30px" name="bMark"></textarea><br>
    	详情名称:<input type="text" name="bdName"><br>
    	办理人:<input type="text" name="bdPerson"><br>
    	<input type="submit" value="确认添加"><br>
    </form>
  </body>
</html>
