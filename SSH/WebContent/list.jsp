<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>name</td>
			<td>age</td>
		</tr>
		<s:if test="#session.carList != null">
			<s:iterator status="status" var="car" value="#session.carList">
				<tr>
					<td style='color: red'><s:property value="name" /></td>
					<td><s:property value="age" /></td>
					<td><a
						href="${pageContext.request.contextPath}/delete?name=1">delete</a></td>
				</tr>
			</s:iterator>
			
			
		</s:if>
	</table>
	
	<s:debug></s:debug>
</body>
</html>