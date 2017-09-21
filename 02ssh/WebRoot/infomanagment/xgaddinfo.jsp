<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息填报</title>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加信息</title>
</head>

<style type="text/css">
body,td,th {
	font-size: larger;
}
body {
	background-image: url(images/wen1.jpg);
}
</style>

<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 600px;
}

th, td {
	
	border: solid #333 1px;
	height: 30px;
}

div {
	text-align: center;
}
</style>
<style type="text/css">
	* {margin:0px; padding:0px;}
	em{
		color:#3F0;
		}
body { font-family:Verdana; font-size:14px; margin:0;}
#container {margin:0 auto; width:910px;}
#header { height:206px; background:#6cf; margin-bottom:5px;}
#menu { height:20px; background:lightgray; margin-bottom:5px;}
#mainContent { height:500px; margin-bottom:5px;}
#content { margin:0 245px !important; margin:0 245px; height:500px;background-image:url(images/1.jpg);}
#footer { height:40px; background:lightgray;}
</style>
<script src="jquery-1.9.1.js"></script>
  </head>
  <script language="javascript">//所有的下拉菜单
  function onloadbm()
{
                $.ajax({
                    type : "post",
                    url : "b",
                    dataType : "text",//设置需要返回的数据类型
                    success : function(d) {
                    	var w = document.getElementById("w");
                    	arr=d.split(",");
                    	for(var i=0;i<arr.length-1;i++)
                    	{
                    		w.options.add(new Option(arr[i],arr[i]));
                    	}
                    },
                    error : function() {
                        alert("错误");
                    }
                });
                }
function onloadflfirst()
{
	 $.ajax({
                    type : "post",
                    url : "c",
                    dataType : "text",//设置需要返回的数据类型
                    success : function(d) {
                    	var Centralized1=document.getElementById("Centralized1");
                    	arr=d.split(",");
                    	for(var i=0;i<arr.length-1;i++)
                    	{
                    		Centralized1.options.add(new Option(arr[i],arr[i]));
                    	}
                    },
                    error : function() {
                        alert("错误");
                    }
                });
}
function onloadflsecond()

{

	var Centralized2=document.getElementById("Centralized2");

	var Centralized3=document.getElementById("Centralized3");

	for(var i = Centralized2.length-1;i >0; i--)
	{
		Centralized2.options.remove(i);	
	}

	for(var i = Centralized3.length-1;i >0; i--)
	{
		Centralized3.options.remove(i);	
	}
	
	 $.ajax({
	 			
                    type : "post",
                    url : "d",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"s":document.getElementById("Centralized1").value.substring(0,3)},
                    success : function(d) {
                    	
                    	var Centralized2=document.getElementById("Centralized2");
                    	arr=d.split(",");
                    	for(var i=1;i<arr.length-1;i++)
                    	{
                    		Centralized2.options.add(new Option(arr[i],arr[i]));
                    	}
                    	
                    },
                    error : function() {
                        alert("错误");
                    }
                });
}
function onloadflthird()
{
	var Centralized3=document.getElementById("Centralized3");
	for(var i = Centralized3.length-1;i >0; i--)
	{
		Centralized3.options.remove(i);
		
	}
	 $.ajax({
                    type : "post",
                    url : "e",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"s":document.getElementById("Centralized2").value.substring(0,5)},
                    success : function(d) {
                    	var Centralized3=document.getElementById("Centralized3");
                    	arr=d.split(",");
                    	for(var i=0;i<arr.length-1;i++)
                    	{
                    		Centralized3.options.add(new Option(arr[i],arr[i]));
                    	}
                    	
                    },
                    error : function() {
                        alert("错误");
                    }
                });
}
function onloadgmjjfirst()
{
	 $.ajax({
                    type : "post",
                    url : "f",
                    dataType : "text",//设置需要返回的数据类型
                    success : function(d) {
                    	var Industry1=document.getElementById("Industry1");
                    	arr=d.split(",");
                    	for(var i=0;i<arr.length-1;i++)
                    	{
                    		Industry1.options.add(new Option(arr[i],arr[i]));
                    	}
                    },
                    error : function() {
                        alert("错误");
                    }
                });
}
function onloadgmjjsecond()
{
	var Industry2=document.getElementById("Industry2");
	var Industry3=document.getElementById("Industry3");
	for(var i = Industry2.length-1;i >0; i--)
	{
		Industry2.options.remove(i);	
	}
	for(var i = Industry3.length-1;i >0; i--)
	{
		Industry3.options.remove(i);	
	}
	 $.ajax({
                    type : "post",
                    url : "g",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"s":document.getElementById("Industry1").value.substring(0,1)},
                    success : function(d) {
                    	var Industry2=document.getElementById("Industry2");
                    	arr=d.split(",");
                    	for(var i=1;i<arr.length-1;i++)
                    	{
                    		Industry2.options.add(new Option(arr[i],arr[i]));
                    	}
                    	
                    },
                    error : function() {
                        alert("错误");
                    }
                });
}
function onloadgmjjthird()
{
	var Industry3=document.getElementById("Industry3");
	for(var i = Industry3.length-1;i >0; i--)
	{
		Industry3.options.remove(i);
		
	}
	 $.ajax({
                    type : "post",
                    url : "h",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"s":document.getElementById("Industry2").value.substring(0,3)},
                    success : function(d) {
                    	var Industry3=document.getElementById("Industry3");
                    	arr=d.split(",");
                    	for(var i=0;i<arr.length-1;i++)
                    	{
                    		Industry3.options.add(new Option(arr[i],arr[i]));
                    	}
                    	
                    },
                    error : function() {
                        alert("错误");
                    }
                });
        }
 </script>



<body style="background-image:url(image/S.jpg);" onload="onloadbm();onloadflfirst();onloadgmjjfirst();onloadts();">
<center>
<h1 class="one">河北省科技信息通用调查系统</h1>
<h2>河北省重大技术需求征集表</h2>
<form name="a" action="infotable_savechange?infono=${infotable.infono }" method="post">
<table>			
					<tr>
						<td  style="text-align:center;">*机构全称</td>
						<td  style="text-align:center;"><input type="text"style="width:90%; height:90%"id="institutionName" value="${infotable.institutionName }"  name="infotable.institutionName"></td>
						<td  style="text-align:center;">*归口管理部门</td>
						<td  style="text-align:center;">
					    <select name="infotable.centralized" style="width:90%; height:90%"  id="w">
					    <option select  value="${infotable.centralized} ">${infotable.centralized}</option>
                    </select>
                    </td>
					</tr>
					<tr>
						<td  style="text-align:center;">*通讯地址</td>
						<td style="text-align:center;"><input id="address"  type="text" style=" width:90%; height:90%" name="infotable.address" value="${infotable.address }"></td>
						<td  style="text-align:center;">*所在地域</td>
						<td style="text-align:center;">
						<select style="width:90%; height:90%" name="infotable.szdy" id="ww">
						<option select  value="${infotable.szdy} ">${infotable.szdy}</option>
					    <option value="130100石家庄市">石家庄市</option>
					    <option value="130200唐山市">唐山市</option>
					    <option value="130300秦皇岛市">秦皇岛市</option>
					    <option value="130400邯郸市">邯郸市</option>
					    <option value="130500邢台市">邢台市</option>
					    <option value="130600保定时">保定市</option>
					    <option value="130700张家口市">张家口市</option>
					    <option value="130800承德市">承德市</option>
					    <option value="130900沧州市">沧州市</option>
					    <option value="131000廊坊市">廊坊市</option>
					    <option value="131100衡水市">衡水市</option>
					    <option value="130682定州市">定州市</option>
					    <option value="130181辛集市">辛集市</option>
					    <option value="120000其他（河北工大）">其他（河北工大）</option>
					    </select>
					    </td>
						</tr>
					<tr>
						<td  style="text-align:center;">网址</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%;" id="dwwz" type="text" name="infotable.website" value="${infotable.website }" style="height:25px;"></td>
						<td  style="text-align:center;">*电子信箱</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%; " type="text" name="infotable.email" id="Email" value="${infotable.email }"style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*法人代表</td>
						<td style="text-align:center;"><input type="text" style="width:90%; height:90%;" name="infotable.represent" id="Represent" value="${infotable.represent }"style="height:25px;"></td>
						<td  style="text-align:center;">邮政编码</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%" type="text" name="infotable.postalcode" id="Postalcode" value="${infotable.postalcode }"style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*联系人</td>
						<td   style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="infotable.contactName" value="${infotable.contactName }" id="ContactName" style="height:25px;"></td>
						<td style="text-align:center;">固定</td>
						<td   style="text-align:center;"><input type="text" style=" width:90%; height:90%" name="infotable.fixedPhone" value="${infotable.fixedPhone }" id="FixedPhone"></td>
					</tr>
					<tr>
						<td style="text-align:center;">*手机</td>
						<td  style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="infotable.mobilePhone" value="${infotable.mobilePhone }" id="MobilePhone" ></td>
						<td style="text-align:center;">传真</td>
						<td  style="text-align:center;">    <input style=" width:90%; height:90%"  type="text" name="infotable.fax" value="${infotable.fax }" id="Fax" style="height:25px;"></td>
					</tr>
					
					
					
					
					<tr>
						<td style="text-align:center;">*机构属性</td>
						<td colspan="3">
						<input type="radio" name="infotable.attributes" checked value="企业">企业
						<input type="radio" name="infotable.attributes" value="高等院校">高等院校
						<input type="radio" name="infotable.attributes" value="研究机构">研究机构
						<input type="radio" name="infotable.attributes" value="其它">其它
						</td>
					</tr>
					
					<tr>
						<td colspan="4" style="text-align:center;">*机构简介（限500字）</td>
						</tr>
						<tr>
					       <td colspan="4">
                          <textarea id="Introduction" rows="8" cols="110" style="resize:none;" name="infotable.introduction" onchange="ts1()">${infotable.introduction }</textarea> 
                          <div id="ts1" style="color:red ;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					</tr>
					<tr>
						<td style="text-align:center;">*技术需求名称</td>
						<td  style="text-align:center;"><input style="width:90%; height:90%;" type="text" name="infotable.technology" value="${infotable.technology }" id="Technology"></td>
						<td style="text-align:center;">*需求时限</td>
						<td style="text-align:center;"><input type="text" style="width:50px;"  name="infotable.time1" value="${infotable.time1 }" id="time1" >年至<input type="text"  style="width:50px;" value="${infotable.time2 }"  name="infotable.time2" id="time2">年</td>
					</tr>
		            <tr>
						<td colspan="4" style="text-align:center;">重大科技需求概述</td>
						</tr>
						<tr>
					       <td colspan="5">
					       <br>*1.主要问题（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary1" rows="8" cols="110" style="resize:none;"  name="infotable.summary1" onchange="ts2()">${infotable.summary1 }</textarea> 
                          <div id="ts2" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> <br>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>2.技术关键（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary2" rows="8" cols="110" style="resize:none;" name="infotable.summary2" onchange="ts3()" >${infotable.summary2 }</textarea> 
                          <div id="ts3" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>3.预期目标（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary3" rows="8" cols="110" style="resize:none;"  name="infotable.summary3"onchange="ts4()">${infotable.summary3 }</textarea> 
                          <div id="ts4" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					   </tr>
					<tr>
						<td style="text-align:center;">*关键字</td>
						<td colspan="3">
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword1" value="${infotable.keyword1 }" id="Keyword1">
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword2"	value="${infotable.keyword2 }" id="Keyword2" >
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword3" value="${infotable.keyword3 }" id="Keyword3" >
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword4" value="${infotable.keyword4 }" id="Keyword4" >
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword5" value="${infotable.keyword5 }" id="Keyword5" >
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">拟投入资金总额</td>
						<td colspan="3" style="text-align:center;">
						<input type="text" name="infotable.nmoney" value="${infotable.nmoney }" id="nmoney">万元
						</td>
					</tr>
					<tr>
						<td rowspan="2" style="text-align:center;">*需求技术合作模式</td>
						<td colspan="3">
						<input type="radio" name="infotable.cooperation" checked value="独立研发 ">独立研发
						<input type="radio" name="infotable.cooperation" value="委托研发 ">委托研发<br>
						<input type="radio" name="infotable.cooperation" value="合作研发 ">合作研发
						<input type="radio" name="infotable.cooperation" value="其他">其他<br>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">合作意向单位</td>
						<td colspan="2"><input style="border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-color:black" type="text" name="infotable.cooperationUnit" value="${infotable.cooperationUnit }" size="50" style="height:25px;">（选填）</td>
					</tr>
</table>
<br><br><br>
				<input type="submit" name="submit" value="保存修改">
</form>
</center>
</body>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  

</html>
