<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
   <%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 

  </head>
  <script language="javascript">
function check()
{
	var usermame = document.getElementById("usertable.usermame");
	if(usermame.value=="")
	{
		alert("用户名不能为空！");
	
		usermame.focus();
		return false;
	}
	if (usermame.value.length > 20 || usermame.value.length < 6)
	 {
		alert("用户名小于6位或大于20位");
		return false;
	} 
	else if (CheckCode(usermame.value))
	{
		alert("用户名有特殊字符请重新填写！");
		return false;
	}
	var gsid=document.getElementById("usertable.gsid");
	if(gsid.value=="")
	{
		alert("工商注册码不能为空！");
		return false;
	}
	var cname=document.getElementById("usertable.cname");
	if(cname.value=="")
	{
		alert("机构全称不能为空！");
		return false;
	}
	var cadress=document.getElementById("usertable.cadress");
	if(cadress.value=="")
	{
		alert("通讯地址不能为空！");
		return false;
	}
	var szdy=document.getElementById("usertable.szdy");
	if(szdy.value=="")
	{
		alert("所在地域不能为空！");
		return false;
	}
	var email=document.getElementById("usertable.email");
	if(email.value=="")
	{
		alert("电子信箱不能为空！");
		return false;
	}
	var clegalpersonv=document.getElementById("usertable.clegalpersonv");
	if(clegalpersonv.value=="")
	{
		alert("法人代表不能为空！");
		return false;
	}
	var yb=document.getElementById("usertable.yb");
	if(yb.value=="")
	{
		alert("邮政编码不能为空！");
		return false;
	}
	var introduction=document.getElementById("usertable.introduction");
	if(introduction.value=="")
	{
		alert("机构简介不能为空！");
		return false;
	}
	var pwd1=document.getElementById("usertable.pwd1");
	if(pwd1.value=="")
	{
		alert("密码不能为空！");
		return false;
	}
	if (pwd1.value.length > 20 || pwd1.value.length < 6)
	 {
		alert("密码小于6位或大于20位");
		return false;
	} 
	else if (CheckCode(pwd1.value))
	{
		alert("密码有特殊字符请重新填写！");
		return false;
	}
	var pwd2=document.getElementById("usertable.pwd2");
	if(pwd2.value=="")
	{
		alert("确认密码不能为空！");
		return false;
	}
	if (pwd2.value.length > 20 || pwd2.value.length < 6)
	 {
		alert("确认密码小于6位或大于20位");
		return false;
	} 
	else if (CheckCode(pwd2.value))
	{
		alert("确认密码有特殊字符请重新填写！");
		return false;
	}
	if(!pwd1.value==pwd2.value)
	{
		alert("密码与确认密码不相等！");
		return false;
	}
}
function CheckCode(s) //有特殊字符为true  
{
		var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
		return (containSpecial.test(s));
}
function isNum(str)
{
		for (ilen = 0; ilen < str.length; ilen++) {
                if (str.charAt(ilen) < '0' || str.charAt(ilen) > '9') {
                       return false;
                    }
                }
            return true;
}
function mamecheck()
{


                $.ajax({
                    type : "post",
                    url : "a",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"s":document.getElementById("usertable.usermame").value},
                    success : function(d) {
                    	if(d=="用户名已存在！")
                    	{
                        //alert(d);
                        var ts3=document.getElementById("ts3");
                        ts3.style.display = '';
       
                        document.getElementById("usertable.usermame").focus();
                    	}
                    	else
                    	{
                    		var ts3=document.getElementById("ts3");
                    		ts3.style.display = 'none';
                    	}
                    },
                    error : function() {
                        alert("错误");
                    }
                });
	var ts1=document.getElementById("ts1");
	var ts2=document.getElementById("ts2");
	var usermame = document.getElementById("usertable.usermame");
	if (usermame.value.length > 20 || usermame.value.length < 6)
	 {
		ts1.style.display = '';
	} 
	else if (CheckCode(usermame.value))
	{
		ts2.style.display = '';
	}
	else 
	{	
		ts1.style.display = 'none';
		ts2.style.display = 'none';
	}
}
function checki()
{
	var ts3=document.getElementById("ts3");
	if(ts3.value.length>500)
	{
		ts3.style.display = '';
	}
	else
	{
		ts3.style.display = 'none';
	}
}
function  checkpwd()
{
	var ts4=document.getElementById("ts4");
	var ts5=document.getElementById("ts5");
	var pwd1 = document.getElementById("usertable.pwd1");
	if (pwd1.value.length > 20 || pwd1.value.length < 6)
	 {
		ts4.style.display = '';
		ts5.style.display = 'none';
	} 
	else if (CheckCode(pwd1.value))
	{
		ts4.style.display = 'none';
		ts5.style.display = '';
	}
	else 
	{	
		ts4.style.display = 'none';
		ts5.style.display = 'none';
	}
}
</script>
  <body>
	<center>
<br><br>
<s:form name="z" action ="usertable_add" onsubmit="return check()">
		<table border="1" >
		<tr>
			<td>
			用户名：
			</td>
			<td>
			 <s:textfield name="usertable.usermame" id="usertable.usermame" onchange="mamecheck()" />
                          <a id="ts1" style="color:red;display:none">*用户名小于6位或大于20位</a>
                          <a id="ts2" style="color:red ;display:none">*用户名有特殊字符请重新填写</a>   
                          <a id="ts3" style="color:red ;display:none">*用户名重复</a>    
			</td>
		</tr>
		 <tr>
			<td>
				工商注册码：
			</td>
			<td>
			 <s:textfield name ="usertable.gsid" id ="usertable.gsid"/>
			</td>
		</tr>
		<tr>
			<td>
				机构全称：
			</td>
			<td>
			 <s:textfield name ="usertable.cname" id ="usertable.cname"/>
			</td>
		</tr>
		<tr>
			<td>
				通讯地址：
			</td>
			<td>
			 <s:textfield name ="usertable.cadress" id ="usertable.cadress"/>
			</td>
		</tr>
		<tr>
			<td>
				所在地域：
			</td>
			<td>
			 <s:select name="usertable.szdy" id="usertable.szdy" list="{'石家庄市','唐山市','秦皇岛市','邯郸市','邢台市','保定市','张家口市','承德市','沧州市','廊坊市','衡水市','定州市','辛集市','其他（河北工大）'}"
			 	/>
			</td>
		</tr>	
		<tr>
			<td>
				电子信箱：
			</td>
			<td>
			 <s:textfield name ="usertable.email" id ="usertable.email"/>
			</td>
		</tr>
		<tr>
			<td>
				法人代表：
			</td>
			<td>
			 <s:textfield name ="usertable.clegalpersonv" id ="usertable.clegalpersonv"/>
			</td>
		</tr>
		<tr>
			<td>
				邮政编码：
			</td>
			<td>
			 <s:textfield name ="usertable.yb" id ="usertable.yb"/>
			</td>
		</tr>
		<tr>
			<td>
				机构简介(500字以内)：
			</td>
			<td>
			 <s:textarea name="usertable.introduction" id="usertable.introduction" rows="9" cols="60" onchange="checki()"/>
			 <a id="ts3" style="color:red;display:none">*超过500字</a>
			</td>
		</tr>
		<tr>
			<td>
				密码：
			</td>
			<td>
			 <s:password name ="usertable.pwd1" id ="usertable.pwd1" onchange="checkpwd()"/>
			    <a id="ts4" style="color:red;display:none">*密码小于6位或大于20位</a>
                <a id="ts5" style="color:red ;display:none">*密码有特殊字符请重新填写</a>     
			</td>
		</tr>
		<tr>
			<td>
				确认密码：
			</td>
			<td>
			 <s:password name ="usertable.pwd2" id ="usertable.pwd2"/>
			</td>
		</tr>
		
		<tr>
			<td>
				选择用户角色：
			</td>
			<td>
			<s:checkboxlist list="#allroles" name="ids" listValue="name" listKey="id"></s:checkboxlist>
			</td>
		</tr>
		</table>
		
		
		 <s:submit value="添加用户"></s:submit> 
 		
	</s:form>
		</center>
  </body>
</html>
