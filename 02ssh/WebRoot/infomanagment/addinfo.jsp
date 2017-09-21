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
<script language="javascript">
function onloadts()
{
				
                $.ajax({
                    type : "post",
                    url : "i",
                    dataType : "text",
                    success : function(d) {
                    	arr=d.split(",");
                    	document.getElementById("institutionName").value=arr[0];
                    	document.getElementById("address").value=arr[1];
                    	document.getElementById("Email").value=arr[3];
                    	document.getElementById("Represent").value=arr[4];
                    	document.getElementById("Postalcode").value=arr[5];
                    	document.getElementById("Introduction").value=arr[6];
                    },
                    error : function() {
                        alert("错误");
                    }
                });
                }
</script>

<script language="javascript">
function ts1()
{
	var dd1 = document.getElementById('Introduction').value.length;
	var d1 = document.getElementById('ts1');
	if(dd1>500)
		{
		d1.style.display = '';
		}
	else
		{
		d1.style.display = 'none';
		}
}
function ts2()
{
	var dd2 = document.getElementById('Summary1').value.length;
	var d2 = document.getElementById('ts2');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}
function ts3()
{
	var dd2 = document.getElementById('Summary2').value.length;
	var d2 = document.getElementById('ts3');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}
function ts4()
{
	var dd2 = document.getElementById('Summary3').value.length;
	var d2 = document.getElementById('ts4');
	if(dd2>500)
		{
		d2.style.display = '';
		}
	else
		{
		d2.style.display = 'none';
		}
}

function gjz1()
{
	var Keyword2=document.getElementById('Keyword2');
	Keyword2.style.display = '';
}
function gjz2()
{
	var Keyword3=document.getElementById('Keyword3');
	Keyword3.style.display = '';
}
function gjz3()
{
	var Keyword2=document.getElementById('Keyword4');
	Keyword4.style.display = '';
}
function gjz4()
{
	var Keyword5=document.getElementById('Keyword5');
	Keyword5.style.display = '';
}
function demo()
{
//	var d1 = document.getElementById('ts1');//获取该div节点
//	d1.style.display = '';
//	var d2 = document.getElementById('ts2');//获取该div节点
//	d2.style.display = '';
	var s = document.getElementsByName("infotable.researchType");
    for (var i = 0; i < s.length; i++) {
        if (s[i].checked == true&&s[i].value=="基础研究") {
        
        	document.getElementById("e1").disabled=true;
        	document.getElementById("e2").disabled=true;
        	document.getElementById("e3").disabled=true;
        	document.getElementById("e4").disabled=true;
        	document.getElementById("e5").disabled=true;
        	document.getElementById("e6").disabled=true;
        	document.getElementById("e7").disabled=true;
        	document.getElementById("e8").disabled=true;
        	document.getElementById("e9").disabled=true;
        	document.getElementById("e0").disabled=true;
        	document.getElementById("e10").disabled=true;
        	document.getElementById("e11").disabled=true;
        	document.getElementById("Centralized1").disabled=false;
        	document.getElementById("Industry1").disabled=true;
            }
        if (s[i].checked == true&&s[i].value!="基础研究")
        	{
        	document.getElementById("e1").disabled=false;
        	document.getElementById("e2").disabled=false;
        	document.getElementById("e3").disabled=false;
        	document.getElementById("e4").disabled=false;
        	document.getElementById("e5").disabled=false;
        	document.getElementById("e6").disabled=false;
        	document.getElementById("e7").disabled=false;
        	document.getElementById("e8").disabled=false;
        	document.getElementById("e9").disabled=false;
        	document.getElementById("e0").disabled=false;
        	document.getElementById("e10").disabled=false;
        	document.getElementById("e11").disabled=false;
        	document.getElementById("Centralized1").disabled=true;
        	document.getElementById("Industry1").disabled=false;
        	}
    }
}
</script>

<body style="background-image:url(image/S.jpg);" onload="onloadbm();onloadflfirst();onloadgmjjfirst();onloadts();">
<center>
<h1 class="one">河北省科技信息通用调查系统</h1>
<h2>河北省重大技术需求征集表</h2>
<form name="a" action="infotable_save" method="post">
<table>			
					<tr>
						<td  style="text-align:center;">*机构全称</td>
						<td  style="text-align:center;"><input type="text"style="width:90%; height:90%"id="institutionName"  name="infotable.institutionName"></td>
						<td  style="text-align:center;">*归口管理部门</td>
						<td  style="text-align:center;">
					    <select name="infotable.centralized" style="width:90%; height:90%" id="w">
					    
                    </select>
                    </td>
					</tr>
					<tr>
						<td  style="text-align:center;">*通讯地址</td>
						<td style="text-align:center;"><input id="address"  type="text" style=" width:90%; height:90%" name="infotable.address"></td>
						<td  style="text-align:center;">*所在地域</td>
						<td style="text-align:center;">
						<select style="width:90%; height:90%" name="infotable.szdy" id="ww">
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
						<td  style="text-align:center;"><input  style="width:90%; height:90%;" id="dwwz" type="text" name="infotable.website" style="height:25px;"></td>
						<td  style="text-align:center;">*电子信箱</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%; " type="text" name="infotable.email" id="Email" style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*法人代表</td>
						<td style="text-align:center;"><input type="text" style="width:90%; height:90%;" name="infotable.represent" id="Represent" style="height:25px;"></td>
						<td  style="text-align:center;">邮政编码</td>
						<td  style="text-align:center;"><input  style="width:90%; height:90%" type="text" name="infotable.postalcode" id="Postalcode"style="height:25px;"></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*联系人</td>
						<td   style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="infotable.contactName" id="ContactName" style="height:25px;"></td>
						<td style="text-align:center;">固定</td>
						<td   style="text-align:center;"><input type="text" style=" width:90%; height:90%" name="infotable.fixedPhone" id="FixedPhone"></td>
					</tr>
					<tr>
						<td style="text-align:center;">*手机</td>
						<td  style="text-align:center;"><input style=" width:90%; height:90%" type="text" name="infotable.mobilePhone" id="MobilePhone" ></td>
						<td style="text-align:center;">传真</td>
						<td  style="text-align:center;">    <input style=" width:90%; height:90%"  type="text" name="infotable.fax" id="Fax" style="height:25px;"></td>
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
                          <textarea id="Introduction" rows="8" cols="110" style="resize:none;" name="infotable.introduction"onchange="ts1()"></textarea> 
                          <div id="ts1" style="color:red ;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					</tr>
					<tr>
						<td style="text-align:center;">*技术需求名称</td>
						<td  style="text-align:center;"><input style="width:90%; height:90%;" type="text" name="infotable.technology" id="Technology"></td>
						<td style="text-align:center;">*需求时限</td>
						<td style="text-align:center;"><input type="text" style="width:50px;"  name="infotable.time1" id="time1" >年至<input type="text"  style="width:50px;"   name="infotable.time2" id="time2"">年</td>
					</tr>
		            <tr>
						<td colspan="4" style="text-align:center;">重大科技需求概述</td>
						</tr>
						<tr>
					       <td colspan="5">
					       <br>*1.主要问题（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary1" rows="8" cols="110" style="resize:none;" name="infotable.summary1" onchange="ts2()"></textarea> 
                          <div id="ts2" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> <br>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>2.技术关键（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary2" rows="8" cols="110" style="resize:none;" name="infotable.summary2" onchange="ts3()" ></textarea> 
                          <div id="ts3" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
                        </tr>
                        <tr>
                          <td colspan="4">
                          <br>3.预期目标（限500字）<br>
                          <textarea style="overflow-y:scroll" id="Summary3" rows="8" cols="110" style="resize:none;" name="infotable.summary3"onchange="ts4()"></textarea> 
                          <div id="ts4" style="color:red;display:none"> 
                          <h5>*字数超过500字</h5> </div> 
                          </td>
					   </tr>
					<tr>
						<td style="text-align:center;">*关键字</td>
						<td colspan="3">
						<input style="height:25px;wight:50px" type="text" name="infotable.keyword1" id="Keyword1" onchange="gjz1()">
						<input style="height:25px;wight:50px;display:none" type="text" name="infotable.keyword2" id="Keyword2"  onchange="gjz2()">
						<input style="height:25px;wight:50px;display:none" type="text" name="infotable.keyword3" id="Keyword3"  onchange="gjz3()">
						<input style="height:25px;wight:50px;display:none" type="text" name="infotable.keyword4" id="Keyword4"  onchange="gjz4()">
						<input style="height:25px;wight:50px;display:none" type="text" name="infotable.keyword5" id="Keyword5" >
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">拟投入资金总额</td>
						<td colspan="3" style="text-align:center;">
						<input type="text" name="infotable.nmoney" id="nmoney">万元
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
						<td colspan="2"><input style="border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-color:black" type="text" name="infotable.cooperationUnit" size="50" style="height:25px;">（选填）</td>
					</tr>
					<tr>
						<td style="text-align:center;">*科技活动类型</td>
						<td colspan="3">
						<input id="type" type="radio" name="infotable.researchType" checked value="基础研究"  onChange="demo()">基础研究
						<input id="type" type="radio" name="infotable.researchType" value="应用研究"  onChange="demo()">应用研究
						<input id="type" type="radio" name="infotable.researchType" value="试验发展"  onChange="demo()">试验发展<br>
						<input id="type" type="radio" name="infotable.researchType" value="研究发展与成果应用"  onChange="demo()">研究发展与成果应用
						<input id="type" type="radio" name="infotable.researchType" value="技术推广与科技服务"  onChange="demo()">技术推广与科技服务
						<input id="type" type="radio" name="infotable.researchType" value="生产性活动"  onChange="demo()">生产性活动
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">学科分类（限基础研究填写）</td>
						<td colspan="3">
					    <select  name="Centralized1" id="Centralized1" onchange="onloadflsecond()">
					    <option select value="">-----请选择------</option>
						</select>
					    <select name="Centralized2" id="Centralized2" onchange="onloadflthird()">
					    <option select value="">-----请选择------</option>
						</select>
						<select name="infotable.centralized3" id="Centralized3" >
						<option select value="">-----请选择------</option>
						</select>
						</td>
					</tr>

					<tr>
						<td style="text-align:center;">需求技术所属领域（非基础研究填写）</td>
						<td colspan="3">
						<input id="e1" type="checkbox" name="infotable.filed" value="电子信息">电子信息
						<input id="e2" type="checkbox" name="infotable.filed" value="光机电一体化">光机电一体化
						<input id="e3" type="checkbox" name="infotable.filed" value="生物技术与制药">生物技术与制药<br>
						<input id="e4" type="checkbox" name="infotable.filed" value="新材料及应用">新材料及应用
						<input id="e5" type="checkbox" name="infotable.filed" value="现代农业">现代农业
						<input id="e6" type="checkbox" name="infotable.filed" value="新能源与高效节能">新能源与高效节能<br>
						<input id="e7" type="checkbox" name="infotable.filed" value="资源与环境">资源与环境
						<input id="e8" type="checkbox" name="infotable.filed" value="高技术服务业">高技术服务业<br>
						<input id="e9" type="checkbox" name="infotable.filed" value="海洋">海洋
						<input id="e0" type="checkbox" name="infotable.filed" value="社会公共事业 ">社会公共事业
						<input id="e10" type="checkbox" name="infotable.filed" value="医疗卫生">医疗卫生
						<input id="e11" type="checkbox" name="infotable.filed" value="其它技术（注明） ">其它技术（注明）
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">需求技术应用行业（非基础研究填写）</td>
						<td colspan="3">
						<select name="Industry1" id="Industry1" onchange="onloadgmjjsecond()">
					    <option value="">-----请选择------</option>
						</select>
					    <select name="Industry2" id="Industry2" onchange="onloadgmjjthird()">
						<option value="">-----请选择------</option>
						</select>
						<select name="infotable.industry3" id="Industry3" >
						<option value="">-----请选择------</option>
						</select>
					    </td>
					</tr>
		
</table>
<br><br><br>
				<input type="submit" name="submit" value="提交">
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
