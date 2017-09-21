<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	import="java.sql.*"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="css1/style.css" rel="stylesheet" type="text/css" />

<title>我的需求</title>
<style type="text/css">
fieldset {
	width: 1050px;
}

legend {
	font-size: 13px;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 1100px;
}

table,th,td {
	border: 0px solid white;
}

th {
	height: 35px;
}

td {
	text-align: center;
	height: 29px;
	font-size: 13px;
}

.btn1 {
	font-size: 12px;
	background-color: DeepSkyBlue;
	color: white;
}

span {
	font-size: 14px;
	color: white;
}

select {
	width: 250px;
}

.longtext1 {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 350px;
}
</style>
</head>

<body>
	<center>
		<table>
			<thead>
				<tr style="background-color:DodgerBlue">
					<th width="8%" height="15px;"><span>序号</span>
					</th>
					<th><span>需求名称</span>
					</th>
					<th width="10%"><span>法人代表</span>
					</th>
					<th width="10%"><span>投入资金</span>
					</th>
					<th width="10%"><span>需求开始时间</span>
					</th>
					<th width="10%"><span>需求结束时间</span>
					</th>
					<th width="10%"><span>状态</span>
					</th>
					<th width="10%"><span>操作</span>
					</th>

				</tr>
			</thead>
			<tbody>
				<s:iterator value="infotables" var="info" status="st">
					<tr
						<s:if test="#st.count%2==0">style="background-color: white;"</s:if>
						<s:else>style="background-color: LightSlateBlue;" </s:else>>
						<td style="text-align: center;"><s:property value='#st.count' />
						</td>
						<td><div class="longtext1" title="${info.technology}">${info.technology}</div>
						</td>
						<td>${info.represent}</td>
						<td>${info.nmoney}万元</td>
						<td>${info.time1}</td>
						<td>${info.time2}</td>
						<td>${info.zt}</td>
						<td><input type="button" class="btn1" value="详情"
							onclick="window.location.href='infotable_xiangqing?infono=${info.infono}'" />
						</td>
					</tr>

				</s:iterator>
			</tbody>
		</table>
	</center>
</body>
</html>
