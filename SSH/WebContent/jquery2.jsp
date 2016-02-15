<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
table {
	border: 0;
	border-collapse: collapse;
}

td {
	font: normal 12px/17px Arial;
	padding: 2px;
	width: 100px;
}

th {
	font: bold 12px/17px Arial;
	text-align: left;
	padding: 4px;
	border-bottom: 1px solid #333;
}

.even {
	background: #FFF38F;
}

.odd {
	background: #FFFFEE;
}

.selected {
	background: #FF6500;
	color: #fff;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/script/jquery-1.4.2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>实现表格的隔行变色,并且对含有文本"王五"的数据行高亮显示</h1>
	<table cellpadding="1" cellspacing="0">
		<thead>
			<tr>
				<th>姓名</th>
				<th>性别</th>
				<th>暂住地</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td>张三</td>
				<td>男</td>
				<td>浙江宁波</td>
			</tr>
			<tr>
				<td>李四</td>
				<td>女</td>
				<td>浙江宁波</td>
			</tr>
			<tr>
				<td>王五</td>
				<td>男</td>
				<td>浙江温州</td>
			</tr>
			<tr>
				<td>赵六</td>
				<td>男</td>
				<td>湖南长沙</td>
			</tr>
			<tr>
				<td>Rain</td>
				<td>男</td>
				<td>四川成都</td>
			</tr>

		</tbody>
	</table>
<script type="text/javascript">
	$(function(){
		$("tbody tr:even").addClass("even");
		$("tbody tr:odd").addClass("odd");
		$("tbody tr:contains('王五')").addClass("selected");
	})
</script>
</body>
</html>