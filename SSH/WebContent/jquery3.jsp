<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/script/jquery-1.4.2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>实现复选框的全选、全不选和反选功能</h1>
	<br>
	<br>
	<form action="#">
		<input name="sports" type="checkbox" value="football">足球 <input
			name="sports" type="checkbox" value="basketball">篮球 <input
			name="sports" type="checkbox" value="badminton">羽毛球 <input
			name="sports" type="checkbox" value="table tennis">羽毛球<br />
		<input type="button" value="全选" id="checkAll" /> <input type="button"
			value="全不选" id="checkNotMany" /> <input type="button" value="反选"
			id="reverseCheck" />
	</form>
	<script type="text/javascript">
		$(function() {
			$("#checkAll").click(function() {
				//选择表单元素:checkbox,并为其属性checked值设置值为true
				$(":checkbox").attr("checked", true);
			})
			//选择表单元素:checkbox.并为其属性checked值设置为false
			$("#checkNotMany").click(function() {
				$(":checkbox").attr("checked", false);
			})
			//选择表单元素:checkbox,并使用each函数遍历每个元素,设置checked属性为原来checked属性的取反值
			$("#reverseCheck").click(function() {
				$(":checkbox").each(function() {
					$(this).attr("checked", !($(this).attr("checked")));
				})
			})
		})
	</script>
</body>
</html>