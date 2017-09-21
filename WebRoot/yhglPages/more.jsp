<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'more.jsp' starting page</title>
    
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
  <br>
<br><br><br>
<center>
请选择该用户拥有的角色：
<br><br><br>
    <s:form action="usertable_savejs.action">
		<s:hidden name="usermame" value="%{usertable.usermame }"/>
		<s:checkboxlist list="#allroles" name="ids" listValue="name"
			listKey="id"></s:checkboxlist>
			<br><br><br>
		<input type="submit" value="保存" />
	</s:form>
	</center>
  </body>
</html>
