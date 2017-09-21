<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</head>
<body >
	<br><br><br><br>
	<table>
						<tr>
						<td style="text-align:center;">机构全称</td>
				        <td colspan="2"><p>${infotable.institutionName}</p></td>
						<td  style="text-align:center;">*归口管理部门</td>
						<td><p>${infotable.centralized}</p></td>
					    </tr>
					<tr>
						<td  style="text-align:center;">*通讯地址</td>
						<td colspan="2"><p>${infotable.address}</p></td>
						<td  style="text-align:center;">*所在地域</td>
						<td style="text-align:center;">
						<p>${infotable.szdy}</p></td>
					    
						</tr>
					<tr>
						<td colspan="1"  style="text-align:center;">网址</td>
						<td colspan="2" style="text-align:center;"><p>${infotable.website}</p></td>
						<td colspan="1" style="text-align:center;">*电子信箱</td>
						<td colspan="1" style="text-align:center;"><p>${infotable.email}</p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*法人代表</td>
						<td colspan="2" style="text-align:center;"><p>${infotable.represent}</p></td>
						<td style="text-align:center;">邮政编码</td>
						<td style="text-align:center;"><p>${infotable.postalcode}</p></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*联系人</td>
						<td colspan="2" style="text-align:center;"><p>${infotable.contactName}</p></td>
						<td  style="text-align:center;">固定</td>
						<td style="text-align:center;"><p>${infotable.fixedPhone}</p></td>
					</tr>
					<tr>
						<td  style="text-align:center;">*手机</td>
						<td colspan="2"  style="text-align:center;"><p>${infotable.mobilePhone}</p></td>
						<td style="text-align:center;">传真</td>
						<td style="text-align:center;"><p>${infotable.fax}</p></td>
					</tr>
					
					
					
					
					<tr>
						<td style="text-align:center;">机构属性</td>
						<td colspan="4">
						<p>${infotable.attributes}</p>
						</td>
					</tr>
					
					<tr>
						<td colspan="5" style="text-align:center;">机构简介</td>
						</tr>
						<tr>
					      <td colspan="5" style="text-align:center;"> <p>${infotable.introduction}</p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*技术需求名称</td>
						<td colspan="2" style="text-align:center;"><p>${infotable.technology}</p></td>
						<td style="text-align:center;">*需求时限</td>
						<td style="text-align:center;"><p>${infotable.time1}</p>年至<p>${infotable.time2}</p>年</td>
					</tr>
		            <tr>
						<td colspan="5" style="text-align:center;">*重大科技需求概述</td>
						</tr>
						<tr>
					       <td colspan="5">
					       <br>1.主要问题（限500字）<br>
                         <p>${infotable.summary1}</p>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="5">
                          <br>2.技术关键（限500字）<br>
                          <p>${infotable.summary2}</p>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="5">
                          <br>3.预期目标（限500字）<br>
                          <p>${infotable.summary3}</p>
                          </td>
					   </tr>
					<tr>
						<td style="text-align:center;">*关键字</td>
						<td colspan="4">
						<p>${infotable.keyword1}</p><br><p>${infotable.keyword2}</p><br><p>${infotable.keyword3}</p><br><p>${infotable.keyword4}</p><br><p>${infotable.keyword5}</p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">拟投入资金总额</td>
						<td colspan="4" style="text-align:center;">
						<p>${infotable.nmoney}</p>万元
						</td>
					</tr>
					<tr>
						<td rowspan="2" style="text-align:center;">*需求技术合作模式</td>
						<td colspan="4">
						<p>${infotable.cooperation}</p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">合作意向单位</td>
						<td colspan="3"><p>${infotable.cooperationUnit}</p></td>
					</tr>
					<tr>
						<td style="text-align:center;">*科技活动类型</td>
						<td colspan="4">
						<p>${infotable.researchType}</p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">学科分类（限基础研究填写）</td>
						<td colspan="4">
					    <p>${infotable.centralized3}</p>
						</td>
					</tr>

					<tr>
						<td style="text-align:center;">需求技术所属领域（非基础研究填写）</td>
						<td colspan="4">
						<p>${infotable.filed}</p>
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">需求技术应用行业（非基础研究填写）</td>
						<td colspan="4">
						<p>${infotable.industry3}</p>
					    </td>
					</tr>
		
</table>
<br>
	<a href="infotable_tijiao?infono=${infotable.infono}">提交</a>
<br><br><br><br>
  </body>
</html>