<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		
		
		/* 日期格式化 */
		Date.prototype.format = function(fmt) { 
		     var o = { 
		        "M+" : this.getMonth()+1,                 //月份 
		        "d+" : this.getDate(),                    //日 
		        "h+" : this.getHours(),                   //小时 
		        "m+" : this.getMinutes(),                 //分 
		        "s+" : this.getSeconds(),                 //秒 
		        "q+" : Math.floor((this.getMonth()+3)/3), //季度 
		        "S"  : this.getMilliseconds()             //毫秒 
		    }; 
		    if(/(y+)/.test(fmt)) {
		            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
		    }
		     for(var k in o) {
		        if(new RegExp("("+ k +")").test(fmt)){
		             fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
		         }
		     }
		    return fmt; 
		};
		var dd="${requestScope.faq.createdate}";
		var date =new Date(dd).format("yyyy-MM-dd");
		var faq="${requestScope.faq}";
		if(faq!=null){
			$("table tr:eq(1) td:eq(1)").text("${requestScope.faq.cname}");
			$("table tr:eq(2) td:eq(1)").text(date);
			$("table tr:eq(3) td:eq(1)").text("${requestScope.faq.title}");
			$("table tr:eq(4) td:eq(1)").text("${requestScope.faq.content}");
		}
		
		$("#reback").click(function(){
			location.href="selFaqs";
		});
	});
</script>
</head>
<body>
<div>
<form action="">
<table>
<tr class="tt">
	<td  colspan="2">常见问题检索</td>
</tr>
<tr>
<td>分类</td>
<td>
</td>
</tr>
<tr>
	<td>添加时间：</td>
	<td> </td>
</tr>
<tr>
<td>标题</td>
<td></td>
</tr>

<tr>
<td>内容</td>
<td>
<textarea  rows="3" name="content" id="content"></textarea>
</td>
</tr>

<tr>
<td colspan="2"><input type="button" value="返回" id="reback"> 
 </td>
</tr>

</table>
</form>
</div>
</body>
</html>