<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>
<%@taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link href="css1/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">@import "docs/assets/css/default.css";</style>
	<style type="text/css">@import "addons/pager/jquery.tablesorter.pager.css";</style>
	<script type="text/javascript" src="docs/assets/js/jquery-latest.js"></script>
	<script type="text/javascript" src="docs/assets/js/jquery.tablesorter.js"></script>
	<script type="text/javascript" src="addons/pager/jquery.tablesorter.pager.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("table")
			.tablesorter({widthFixed: true})
			.tablesorterPager({container: $("#pager")});
	});
	</script>	
<script >
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
});
</script>

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
 background-color:#c3dde0;
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

<style>
.td1{
width:500px
}
</style>
<style type="text/css">
  <!--
  .bt {
   font-size: 20px;
  }
  -->
  </style>
  </head>
  
  <body>
<br><br>
<center>
   <table class="hovertable">
   <thead>
   <tr style="background-color:#00CACA">
   	
  	  <th class="td1"> <font class="bt" face=华文行楷>编号</font></th>
  	  <th class="td1"><font class="bt" face=华文行楷>权限</font></th>
   </tr>
  </thead>
          <tbody>
			<s:iterator value="qxs" var="qx">
	
	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
 	<td class="td1" style=>${qx.id }</td><td class="td1">${qx.name }</td>
	</tr>
	</s:iterator>
  	</tbody>
 </table>
 <br><br>
</center>

<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
</script>


	 <div id="pager" class="pager">
	<form>
	<br>
		<!-- <div style="width:300px"></div> -->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="addons/pager/icons/first.png"  class="first"/>&nbsp;
		<img src="addons/pager/icons/prev.png"    class="prev"/>&nbsp;
		<input type="text" class="pagedisplay" readonly/>&nbsp;
		<img src="addons/pager/icons/next.png" class="next"/>&nbsp;
		<img src="addons/pager/icons/last.png" class="last"/>&nbsp;

每页显示<input type="number" class="pagesize" max=20 min=0 value=10>条记录
  </form>
</div>

  </body>
</html>



<%-- <s:iterator value="qxs" var="qx">
	
	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
 	<td>${qx.id }</td><td>${qx.name }</td>
	</tr>
	</s:iterator> --%>