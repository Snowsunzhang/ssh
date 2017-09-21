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
   <table class="hovertable" style="width:1000px">
  <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>用户名:</td>
    		<td>${usertable.usermame }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>工商编码:</td>
    		<td>${usertable.gsid }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>机构名称:</td>
    		<td>${usertable.cname }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>通讯地址:</td>
    		<td>${usertable.cadress }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>所在地域:</td>
    		<td>${usertable.szdy }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>电子信箱:</td>
    		<td>${usertable.email }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>法人代表:</td>
    		<td>${usertable.clegalpersonv }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>邮编:</td>
    		<td>${usertable.yb }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>机构简介:</td>
    		<td>${usertable.introduction }</td>
    	</tr>
    	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    		<td>操作:</td>
    		<td><input type="button" value="修改" style="background:PowderBlue;width:50px;height:30px" onclick="window.location.href='usertable_xiugai?usermame=${usertable.usermame}'"/></td>
    	</tr>
 </table>
 <br><br><br>
 		
 <br><br>


  </body>
</html>










<%-- <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userinfo.jsp' starting page</title>
    
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
    <table border="1">
    	<tr>
    		<td>用户名:</td>
    		<td>${usertable.usermame }</td>
    	</tr>
    	<tr>
    		<td>工商编码:</td>
    		<td>${usertable.gsid }</td>
    	</tr>
    	<tr>
    		<td>机构名称:</td>
    		<td>${usertable.cname }</td>
    	</tr>
    	<tr>
    		<td>通讯地址:</td>
    		<td>${usertable.cadress }</td>
    	</tr>
    	<tr>
    		<td>所在地域:</td>
    		<td>${usertable.szdy }</td>
    	</tr>
    	<tr>
    		<td>电子信箱:</td>
    		<td>${usertable.email }</td>
    	</tr>
    	<tr>
    		<td>法人代表:</td>
    		<td>${usertable.clegalpersonv }</td>
    	</tr>
    	<tr>
    		<td>邮编:</td>
    		<td>${usertable.yb }</td>
    	</tr>
    	<tr>
    		<td>机构简介:</td>
    		<td>${usertable.introduction }</td>
    	</tr>
    </table>
  </body>
</html>
 --%>