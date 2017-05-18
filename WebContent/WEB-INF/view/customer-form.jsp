<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.error {
		color: red
	}
</style>
</head>
<body>
	<i>Fill up the below form. An Asterisk (*) means the field is required.</i>
	<br><br>
	<form:form action="processForm" modelAttribute="customer">
		Customer First Name: <form:input path="firstName"/>
		<br>
		Customer Last Name (*): <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"/>
		<br>
		Free Passes: <form:input path="freePasses"/>
		<form:errors path="freePasses" cssClass="error"/>
		<br>
		Postal Code: <form:input path="postalCode"/>
		<form:errors path="postalCode" cssClass="error"/>
		<br>
		<input type="submit" value="Submit"/>
	</form:form>

</body>
</html>