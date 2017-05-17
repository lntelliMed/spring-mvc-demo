<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.red {
		color: red
	}
</style>
</head>
<body>
	
	<form:form action="processForm" modelAttribute="customer">
		Customer First Name: <form:input path="firstName"/>
		<br>
		Customer Last Name: <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="red"/>
		<br>
		<input type="submit" value="Submit"/>
	</form:form>

</body>
</html>