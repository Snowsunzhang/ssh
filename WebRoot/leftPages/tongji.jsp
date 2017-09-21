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

<script>
	function aftertable() {
		var trHTML = "<tr style='height:40px;'>"
				+ "<td style='text-align: right;'><select name='a'"+
					"style='width:120px;'>"
				+ "<option value=' and '>并且</option>"
				+ "<option value=' or '>或者</option>"
				+ "</select>"
				+ "</td>"
				+ "<td style='text-align: right;'><select name='b'"
				+ "style='width:90px;'"
				+ "<option value=''>----请选择检索条件----</option>"
				+ "<option value='represent'>法人代表</option>"
				+ "<option value='address'>通讯地址</option>"
				+ "<option value='contactName'>联系人</option>"
				+ "<option value='nmoney'>投入资金</option>"
				+ "<option value='keyword'>关键字</option>"
				+ "<option value='time1'>开始时间</option>"
				+ "<option value='time2'>结束时间</option>"
				+ "</select>"
				+ "</td>"
				+ "<td>"
				+ "<input type='text' style='width: 280px;'  name='c'>"
				+ "</td>"
				+ "<td style='text-align: left;'><select "+"style='width:100px;'>"
				+ "<option >精确</option>" + "<option >模糊</option>"
				+ "</select></td>" + "tr";
		$("#search").append(trHTML);//在table最后面添加一行

	}
	function deleteaftertable() {
		if ($("#search").find("tr").length > 4)
			$("#search tr:last").remove();
	}
	function chaxun() {
		var jsonArraya = [];
		var jsonArrayb = [];
		var jsonArrayc = [];
		var a = document.getElementsByName("a");
		var b = document.getElementsByName("b");
		var c = document.getElementsByName("c");
		var json;
		if (b[0].value != "" && c[0].value != "") {
			json = {
				"name" : b[0].value
			};
			jsonArrayb.push(json);
			json = {
				"name" : " and "
			};
			jsonArraya.push(json);
			json = {
				"name" : c[0].value
			};
			jsonArrayc.push(json);
		}
		for ( var i = 0; i < a.length; i++) {
			if (b[i + 1].value != "" && c[i + 1].value != "") {
				json = {
					"name" : a[i].value
				};
				jsonArraya.push(json);
				json = {
					"name" : b[i + 1].value
				};
				jsonArrayb.push(json);
				json = {
					"name" : c[i + 1].value
				};
				jsonArrayc.push(json);
			}

		}
		var jsonStringa = JSON.stringify(jsonArraya);
		var jsonStringb = JSON.stringify(jsonArrayb);
		var jsonStringc = JSON.stringify(jsonArrayc);
		if ($("#list").find("tr").length != 0) {
			$("#list tr").remove();
		}
		$.ajax({
			type : "post",
			data : {
				"a" : jsonStringa,
				"b" : jsonStringb,
				"c" : jsonStringc
			},
			url : "infotable_tongji",
			dataType : "json",
			success : function(data) {
				var HTML = "";
				if (data.length == 0) {
					alert("没有查到符合条件的数据项！");
				}
				for ( var i = 0; i < data.length; i++) {
					HTML += "<tr>" + "<td>" + data[i].technology + "</td>"
							+ "<td>" + data[i].nmoney + "万元" + "</td>" + "<td>"
							+ data[i].time1 + "</td>" + "<td>" + data[i].time2
							+ "</td>" + "<td>" + data[i].sh + "</td>" + "<td>"
							+ data[i].bmsh + "</td>"
							+ "<td><a href='infotable_sh?infono="
							+ data[i].infono
							+ "'style='background-color:#00CACA'>详情 </a>"
							+ "</td>" + "</tr>";
				}
				$("#list").append(HTML);

			}
		});
	}
	function click() {
		chaxun();
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("table").tablesorter({
			widthFixed : true
		}).tablesorterPager({
			container : $("#pager")
		});
	});
</script>
<script type="text/javascript">
	
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

<body onload="click()">
	<br>
	<center>
		<table class="tablelist">
			<tbody id="search">
				<tr>
					<td colspan="3"><b>输入搜索条件：</b>
					</td>
				</tr>
				<tr>
					<td style="text-align: right; width: 30%"><input type="button"
						onclick="aftertable()"
						style="width:50px;height:30px;background-color:#00CACA;"
						value="添加"> <input type="button"
						onclick="deleteaftertable()"
						style="width:50px;height:30px;background-color:#00CACA;"
						value="删除"></td>
					<td style="text-align: center; width: 100px;"><input type="text"
						value="sh" name="b" style="display:none">形式审核结果</td>
					<td><select name="c" >
							<option value="">-----请选择------</option>
							<option value="形式审核审核未审核">形式审核未审核</option>
							<option value="形式审核已通过">形式审核已通过</option>
							<option value="形式审核未通过">形式审核未通过</option>
					</select></td>
					<td style="text-align: left;"><select style="width:100px;">
							<option>精确</option>
							<option>模糊</option>
					</select></td>
				</tr>
				<tr>
					<td style="text-align: right;"><select name="a"
						style="width:120px;">
							<option value=" and ">并且</option>
							<option value=" or ">或者</option>
					</select></td>
					<td style="text-align: center;"><input type="text" value="bmsh"
						name="b" style="display:none">部门审核结果</td>
					<td><select name="c">
							<option value="">-----请选择------</option>
							<option value="部门审核审核未审核">部门审核未审核</option>
							<option value="部门审核已通过">部门审核已通过</option>
							<option value="部门审核未通过">部门审核未通过</option>
					</select></td>
					<td style="text-align: left;"><select style="width:100px;">
							<option>精确</option>
							<option>模糊</option>
					</select></td>
				</tr>
				<tr>
					<td style="text-align: right;"><select name="a"
						style="width:120px;">
							<option value=" and ">并且</option>
							<option value=" or ">或者</option>
					</select></td>
					<td style="text-align: center;"><input type="text"
						value="attributes" name="b" style="display:none">机构属性</td>
					<td style=" width: 300px;"><select name="c">
							<option value="">-----请选择------</option>
							<option value="=企业">企业</option>
							<option value="高等院校">高等院校</option>
							<option value="研究机构">研究机构</option>
							<option value="其它">其它</option>
					</select>
					</td>
					<td style="text-align: left;"><select style="width:100px;">
							<option>精确</option>
							<option>模糊</option>
					</select></td>
				</tr>

			</tbody>


		</table>
		<br />
		<table>
			<tr>
				<td style="width: 95%"></td>
				<td style="text-align: center;"><input type="button" id="cx"
					value="查询" onclick="chaxun()"
					style="width:50px;height:30px;background-color:#00CACA"></td>
			</tr>
		</table>
		<br>
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
			<tbody id="list">
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
