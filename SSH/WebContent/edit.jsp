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
<s:form action="" method="post">
	<s:textfield key="personBean.firstName" name="personBean.firstName"/>
    <s:textfield key="personBean.lastName"/>
    <s:textfield key="personBean.email"/>
    <s:textfield key="personBean.phoneNumber"/>
    <s:select key="personBean.sport" list="sports"/>
    <s:radio key="personBean.gender" list="genders"/>
    <s:select key="personBean.residency" list="states" listKey="stateAbbr" listValue="stateName"/>
    <s:checkbox key="personBean.over21"/>
    <s:checkboxlist key="personBean.carModels" list="carModelsAvailable"/>
    <s:submit key="submit"/>
</s:form>
</body>
</html>