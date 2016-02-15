<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome To Struts 2!</h1>
<p><a href='<s:url action="edit"/>'>Edit you information</a><br/>
<a href='<s:url action="carList"/>'>watch you information</a><br/>
<p><a href='<s:url action="delete"/>'>delete you information</a><br/>


<p>
		<a href='<s:url action="edit2"/>'>Edit2 you information</a><br/>


</body>
</html>