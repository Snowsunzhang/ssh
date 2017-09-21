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
<form action="infotable_tjxssh?infono=${infotable.infono}" method="post">
	<input type="button" id="s1" value="通 过" onclick="div1()">
	<div id="tg" style="display:none">
		请选择管理部门
		 <select name="glcs" >
		 <option  value="请选择">请选择</option>
		 <option  value="办公室">办公室</option>
		 <option  value="人事处">人事处</option>
		 <option  value="机关党委">机关党委</option>
		 <option  value="政策法规处">政策法规处</option>
		 <option  value="计划财务处">计划财务处</option>
		 <option  value="平台与基础处">平台与基础处</option>
		 <option  value="国际合作处">国际合作处</option>
		 <option  value="高新技术处">高新技术处</option>
		 <option  value="农村科技处">农村科技处</option>
		 <option  value="社会发展处">社会发展处</option>
		 <option  value="成果与市场处">成果与市场处</option>
		 <option  value="监察室">监察室</option>
		 <option  value="离退休干部处">离退休干部处</option>
		 <option  value="知识产权局">知识产权局</option>
		 <option  value="半干旱中心">半干旱中心</option>
		 <option  value="山办">山办</option>
		 <option  value="机关服务中心">机关服务中心</option>
		 <option  value="科技研发中心">科技研发中心</option>
		 <option  value="科技情报研究院">科技情报研究院</option>
		 <option  value="器材公司">器材公司</option>
		 <option  value="基金办">基金办</option>
		 <option  value="档案馆">档案馆</option>
		 <option  value="科技管理信息中心">科技管理信息中心</option>
		 <option  value="科技投资中心">科技投资中心</option>
		 <option  value="成果转换中心">成果转换中心</option>
		 <option  value="中小企业创新资金管理中心">中小企业创新资金管理中心</option>
		 <option  value="对外交流中心">对外交流中心</option>
                    </select>
	</div>
	<input id="s2" type="button"  value="不通过" onclick="div2()">
	<div id="btg" style="display:none">
	不通过原因（选填）
   <textarea style="overflow-y:scroll"  rows="8" cols="40" style="resize:none;" name="xsshyj"></textarea> <br>
	</div>
	<input type="submit" value="确认审核">
	</form>
<br>
<br><br><br><br><br>
  </body>
 <script language="javascript" type="text/javascript">
function div1()
{
	var tg=document.getElementById("tg");
	var s2=document.getElementById("s2");
	tg.style.display = '';
	s2.style.display = 'none';
}
function div2()
{
	var s1=document.getElementById("s1");
	var btg=document.getElementById("btg");
	btg.style.display = '';
	s.style.display = 'none';
}
</script>
</html>



