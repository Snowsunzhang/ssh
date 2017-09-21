<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script src="jquery-1.9.1.js"></script>
  <!--  <script type="text/javascript">
        $(document).ready(function()
        {
            $("#btn").click(function() {
            alert("jinru");
                $.ajax({
                    type : "post",
                    url : 'UsertableAction/textajax',
                    dataType : "text",//设置需要返回的数据类型
                    success : function(d) {
                        alert(d);
                    },
                    error : function() {
                        alert("错误");
                    }
                });
            });
        });
      
    </script>  -->
  </head>
 
    <body>
  <!-- <input type="text" name ="name">
  <input type="button" id="btn" value="查询" >
  <a id="a"></a> -->

	
<form action="fl_first" method="post"> 
    <input type="submit" id="btn" value="查询55" >
  </form>
<%--  <s:debug></s:debug>
   <s:iterator value="#fls" var="fl">
	${fl.fno }  ${fl.fname } 
  </s:iterator>  --%>
  <c:forEach items="${fls }" var="fl">
  		${fl.fno }${fl.fname }<br>
  	</c:forEach> 
  
  <%-- <s:debug></s:debug> --%>
  <%-- <s:iterator value="#users" var="user">
	${user.id }  ${user.name } 
  </s:iterator> --%>
  <%-- 	<c:forEach items="${users }" var="user">
  		${user.id }${user.name }<br>
  	</c:forEach> --%>
  </body>
</html>
