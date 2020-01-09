<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    <%
	String path = request.getContextPath(); //  path = "/travel"
	
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; // basePath="http://localhost:8080/travel/"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	div{
		width:400px;
		height:200px;
		margin:0 auto;
	}
	table{
		width:400px;
		height:200px;
		text-align:center;
		pdding-left:50px;
		border-collapse: collapse;
	}
	.tt{
		font-size:22px;
		font-weight:bold;
	}
</style>
<script type="text/javascript" src="script/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"selClasses",
			dataType:"json",
			success:function(msg){
				var html="<option value='0'>--请选择--</option>";
				for(var i=0;i<msg.length;i++){
					html+="<option value='"+msg[i].id+"'>"+msg[i].cname+"</option>";
				}
				$("#classid").html(html);
			}
		});
	});
	function reback(){
	location.href="selFaqs";		
	}
</script>
</head>
<body>
<div>
<form action="insFaq" method="post">
<table>
<tr>
<td>分类</td>
<td>
                <select name="classid"  id="classid">                
                       <option></option>
                </select>
</td>
</tr>

<tr>
<td>标题</td>
<td><input type="text" name="title" id="title"/></td>
</tr>

<tr>
<td>内容</td>
<td>
<textarea  rows="3" name="content" id="content"></textarea>
</td>
</tr>

<tr>
<td colspan="2"><input type="submit"> &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="reset"> &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="button" onclick="reback()" value="放弃">
 </td>
</tr>

</table>
</form>
</div>
</body>
</html>