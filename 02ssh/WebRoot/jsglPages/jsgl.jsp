<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>
<%@taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

 <style type="text/css">
table.hovertable {
 font-family: verdana,arial,sans-serif;
 font-size:11px;
 color:#333333;
 border-width: 1px;
 border-color: #999999;
 border-collapse: collapse;
}
table.hovertable th {
 background-color:#00CACA;
 border-width: 1px;
 padding: 8px;
 border-style: solid;
 border-color: #a9c6c9;
}
table.hovertable tr {
 background-color:#d4e3e5;
}
table.hovertable td {
 border-width: 1px;
 padding: 8px;
 border-style: solid;
 border-color: #a9c6c9;
}
</style>
  </head>
  

  <body>
  <center>
  <input type="button"  value="添加角色" onclick="window.location.href='role_getallqx.action'"/>
  <br><br>
  <table class="hovertable" style="width:1000px;">
  <thead>
  <tr style="background-color:#00CACA">
  	<th style="width:100px;">编号</th>
  	<th>角色</th>
  	<th  style="width:200px;">操作</th>
  </tr>
  </thead>
         <tbody>
	<s:iterator value="roles" var="r">
	<tr   onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" >
		<td>${r.id } </td>
		<td> ${r.name }</td>
		<td>
			<input type="button" value="详情" onclick="window.location.href='role_more.action?id=${r.id }'"/>
			<input type="button" value="删除" onclick="window.location.href='role_delete.action?id=${r.id }'"/>		
		</td>
	</tr>
	</s:iterator>
	</tbody> 
</table>
</center>
</body>
</html>


<%-- <s:iterator value="roles" var="role">
	<tr>
		<td>${role.id } </td>
		<td> ${role.name }</td>
		<td>
			<input type="button" value="详情" onclick="window.location.href='role_more.action?id=${role.id }'"/>		
		</td>
	</tr>
	</s:iterator> --%>