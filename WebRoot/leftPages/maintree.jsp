<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'maintree.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="StyleSheet" href="tree.css" type="text/css">
<script type="text/javascript" src="tree.js"></script>
<script src="jquery-1.9.1.js"></script>
<script type="text/javascript">
	var ar;

	// nodeId | parentNodeId | nodeName | nodeUrl
	$.ajax({
		type : "post",
		url : "p",
		dataType : "text",//设置需要返回的数据类型
		success : function(d) {
			arr = d.split(",");
			ar = arr;

		},
		error : function() {
			alert("错误");
		}
	});
 alert(1);

	var Tree = new Array;
	for ( var i = 0; i < ar.length - 1; i++) {
		if (ar[i].substring(3, 7) == "0000") {
			Tree[i] = ar[i].substring(0, 3) + "|0|" + arr[i] + "|infotable_xkfl.action?xkfl="+ar[i]+"&jb=1";
		} else if (ar[i].substring(5, 7) == "00") {
			Tree[i] = ar[i].substring(0, 5) + "|" + ar[i].substring(0, 3) + "|"
					+ arr[i] + "|infotable_xkfl.action?xkfl="+ar[i]+"&jb=2";
		} else {
			Tree[i] = ar[i].substring(0, 7) + "|" + ar[i].substring(0, 5) + "|"
					+ arr[i] + "|infotable_xkfl.action?xkfl="+ar[i]+"&jb=3";
		}
	}
</script>
</head>

<body>
	<div class="tree">
		<script type="text/javascript">
			createTree(Tree);
		</script>
	</div>
</body>
</html>
