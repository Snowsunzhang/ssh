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
  <script language="javascript">
  function update(t,n)
  {
  
  	if(t=="已提交    ")
  	{
 		 alert("该需求已提交不能修改！");
 		 return;
 	 }
  	else
  	{
 	 window.location.href="infotable_xiugai?infono="+n;
 	 }
  
}
  function delete1(t,n)
  {
  
  if(t=="已提交    ")
  {
 	 alert("该需求已提交不能删除！");
 	 return;
  }
  else
  {
  window.location.href="infotable_shanchu?infono="+n;
  }
  
  }
  </script>
<title>我的需求</title>

  </head>
  
  <body>
  <center>
  <table class="tablelist">
  <thead>
  <tr style="background-color:#00CACA">
  	<td>需求名称</td>
  	<td>投入资金</td>
  	<td>需求开始时间</td>
  	<td>需求结束时间</td>
  	<td>状态</td>
  	<td colspan="3">操作</td>
  </tr>
  </thead>
         <tbody>
	<s:iterator value="infotables" var="info">
		<tr>
			<td>${info.technology}</td>
			<td>${info.nmoney}万元</td>
			<td>${info.time1}</td>
			<td>${info.time2}</td>
			<td>${info.zt}</td>
			<td>
				 <input type="button" value="修改" style="background:#00CACA;" onclick="update('${info.zt}','${info.infono}')"/>
				 <input type="button" value="详情" style="background:#00CACA;" onclick="window.location.href='infotable_xiangqing?infono=${info.infono}'"/> 
				 <input type="button" value="删除" style="background:#00CACA;" onclick="delete1('${info.zt}','${info.infono}')"/> 
			</td>
		</tr>
		
	</s:iterator>
	</tbody> 
 </table>
 </center>
  <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	 <div id="pager" class="pager">
	<form>
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
