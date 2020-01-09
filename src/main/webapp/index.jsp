<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		width:600px;
		margin:0 auto;
	}
	table{
		width:600px;
		text-align:center;
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
			$("table tr:gt(2) td").css("border","1px solid black");
			var fname="${sessionScope.fname}";
			if(fname.length!=0&&fname!=null){
				$("#fname").val(fname);
			}
	});
</script>
</head>
<body>
	<div>
		<form action="selFaqs" method="post">
			<table cellspacing="0" cellpadding="0">
				<tr class="tt"><td colspan="4">常见问题检索</td></tr>
				<tr><td>请输入查询关键字：</td><td><input type="text" name="fname" id="fname"/> </td><td><input type="submit" value="查询"/> </td><td><a href="insert.jsp">添加常见问题</a></td></tr>
				<tr class="tt"><td colspan="4">检索结果</td></tr>
				<tr style="font-weight:bold;font-size:14px;">
					<td>编号</td><td>标题</td><td>分类</td><td>创建时间</td>
				</tr>
					<c:forEach items="${requestScope.dto_ls }" var="d">
						<tr>
							<td>${d.id }</td>
							<td><a href="selFaqsById?id=${d.id}">${d.title}</a></td>
							<td>${d.cname }</td>
							<td><fmt:formatDate value="${d.createdate}"/> </td>
						</tr>
					</c:forEach>
				
			</table>
		</form>
	</div>
</body>
</html>