<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${fieldErrors.age[0] }
<s:fielderror name="age"></s:fielderror>
<s:form action="conversion" method="post">
	<s:textfield name="age" label="age"></s:textfield>
	<s:submit></s:submit>
</s:form>
</body>
</html>