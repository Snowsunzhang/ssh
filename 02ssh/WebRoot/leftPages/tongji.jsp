<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	import="java.sql.*"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="css1/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
@import "docs/assets/css/default.css";
</style>
<style type="text/css">
@import "addons/pager/jquery.tablesorter.pager.css";
</style>
<script type="text/javascript" src="docs/assets/js/jquery-latest.js"></script>
<script type="text/javascript"
	src="docs/assets/js/jquery.tablesorter.js"></script>
<script type="text/javascript"
	src="addons/pager/jquery.tablesorter.pager.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("table").tablesorter({
			widthFixed : true
		}).tablesorterPager({
			container : $("#pager")
		});
	});
</script>
<script>
	<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			$(".tip").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});
	});
</script>
</head>

<body>
	<br>
	<br>
	<br>
	<center>
		<form action="infotable_tongji" method="post">
			<table class="tablelist">
				<tr>
					<td style="text-align: right;">形式审核结果</td>
					<td><select name="infotable.sh" id="ww">
							<option value="">-----请选择------</option>
							<option value="形式审核审核未审核">形式审核未审核</option>
							<option value="形式审核已通过">形式审核已通过</option>
							<option value="形式审核未通过">形式审核未通过</option>
					</select>
					</td>
					<td style="text-align: right;">开始时间</td>
					<td><input type="text" name="infotable.time1"></td>
					<td style="text-align: right;">结束时间</td>
					<td><input type="text" name="infotable.time2"></td>
				</tr>
				<tr></tr>
				<tr>
					<td style="text-align: right;">部门审核结果</td>
					<td><select name="infotable.bmsh" id="ww">
							<option value="">-----请选择------</option>
							<option value="部门审核审核未审核">部门审核未审核</option>
							<option value="部门审核已通过">部门审核已通过</option>
							<option value="部门审核未通过">部门审核未通过</option>
					</select></td>
					<td style="text-align: right;">联系人</td>
					<td><input type="text" name="infotable.represent"></td>
					<td style="text-align: right;">机构属性</td>
					<td><select name="infotable.attributes" id="ww">
							<option value="">-----请选择------</option>
							<option value="企业">企业</option>
							<option value="高等院校">高等院校</option>
							<option value="研究机构">研究机构</option>
							<option value="其它">其它</option>
					</select></td>
				</tr>
				<tr></tr>
				<tr>
					<td style="text-align: right;">需求技术合作模式</td>
					<td><select name="infotable.cooperation" id="ww">
							<option value="">-----请选择------</option>
							<option value="独立研发">独立研发</option>
							<option value="委托研发">委托研发</option>
							<option value="合作研发">合作研发</option>
							<option value="其他">其他</option>
					</select>
					</td>
					<td style="text-align: right;">技术需求名称</td>
					<td><input type="text" name="infotable.technology">
					</td>
					<td style="text-align: right;">拟投入资金总额</td>
					<td><input type="text" name="infotable.nmoney">
					</td>
				</tr>
			</table>
			<br />
			<table>
				<tr>
					<td style="width: 95%"></td>
					<td style="text-align: center;"><input type="submit"
						value="查询" style="width:50px;height:30px;background-color:#00CACA">
					</td>
				</tr>
			</table>
			<br>
		</form>
	</center>
	
	<center>
		<table class="tablelist">
			<thead>
				<tr style="background-color:#00CACA">
					<td>需求名称</td>
					<td>投入资金</td>
					<td>需求开始时间</td>
					<td>需求结束时间</td>
					<td>形式审核</td>
					<td>部门审核</td>
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
						<td>${info.sh}</td>
						<td>${info.bmsh }</td>
						<td><a href="infotable_sh?infono=${info.infono}" style="background-color:#00CACA">详情 </a></td>
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
			<img src="addons/pager/icons/first.png" class="first" />&nbsp; <img
				src="addons/pager/icons/prev.png" class="prev" />&nbsp; <input
				type="text" class="pagedisplay" readonly />&nbsp; <img
				src="addons/pager/icons/next.png" class="next" />&nbsp; <img
				src="addons/pager/icons/last.png" class="last" />&nbsp; 每页显示<input
				type="number" class="pagesize" max=20 min=0 value=10>条记录
		</form>
	</div>
</body>
<!--  作业内容：密码md5加密，数据表内密码列要加密，权限，日志，一天一备份， -->
</html>
