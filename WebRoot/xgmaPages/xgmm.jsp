<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xgmm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
  function checkpwd(){
  var newpwd=document.getElementById("newpwd");
  var newpwd1=document.getElementById("newpwd1");
  if(!(newpwd.value==newpwd1.value))
 	{
  		alert("密码与确认密码不相等！");
  		return false;
  	}
  }
  </script>
  <body>
  <center>

  <form action="usertable_xgmm.action" method="post"  onsubmit="return checkpwd()">
  <br><br><br><br><br>
  <table>
  <tr>
  	<td>旧密码：</td>
  	<td><input type="password" name="oldpwd" id="oldpwd"/></td>
  </tr>
  <tr>
  	<td>新密码：</td>
  	<td><input type="password" name="newpwd" id="newpwd"/></td>
  </tr>
  <tr>
  	<td>确认新密码：</td>
  	<td><input type="password" name="newpwd1" id="newpwd1"/></td>
  </tr>
  </table>
  <input type="submit" value="确认提交"  />
  </form>

  </center>
  </body>
</html>
