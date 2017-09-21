<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'xgpwd.jsp' starting page</title>

  </head>
  <script language="javascript">

function check()
{		alert("1");
		var pwd = document.getElementById("pwd2");
		var pwd3 = document.getElementById("pwd3");
		if(pwd.value!=pwd3.value)
		{
			alert("新密码和确认新密码不相等！");
			return false;
		}
		if (pwd.value.length > 20 || pwd.value.length < 6)
		 {
			alert("密码小于6位或大于20位");
			pwd.value="";
			return false;
		} 
		else if (CheckCode(pwd.value)) {
				alert("密码有特殊字符请重新填写！");
				pwd.value = "";
				return false;
			}

		if (pwd3.value.length > 20 || pwd3.value.length < 6)
		 {
			alert("密码小于6位或大于20位");
			pwd3.value="";
			return false;
		} 
		else if (CheckCode(pwd3.value)) {
				alert("密码有特殊字符请重新填写！");
				pwd3.value = "";
				return false;
			}
}
function CheckCode(s) //有特殊字符为true  
	{
		var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
		return (containSpecial.test(s));
	}
	function isNum(str){
		for (ilen = 0; ilen < str.length; ilen++) {
                if (str.charAt(ilen) < '0' || str.charAt(ilen) > '9') {
                       return false;
                    }
                }
            return true;
	}
</script>
  <body>
  <br><br><br><br><br>
   <center>
  <form name="z" action="judgexgpwd.jsp" method="post" onsubmit="return check()">
 
  <table>
	<tr>
		<td>
		<p>原密码</p>
		</td>
		<td>
		<input type="password" name="pwd1" id="pwd1">
		</td>
	</tr>
	<tr>
	
		<td>
		<p>新密码</p>
		</td>
		<td>
		<input type="password" name="pwd2" id="pwd2" >
		</td>
	</tr>
	<tr>
		<td>
		<p>确认新密码</p>
		</td>
		<td>
		<input type="password" name="pwd3" id="pwd3" >
		</td>
	</tr>
	</table>
	<input type="submit" name="submit" value="提    交"> 
	
	</form>
	</center>
  </body>

</html>
