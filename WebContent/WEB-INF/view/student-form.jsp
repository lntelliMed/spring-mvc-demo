<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Registration Form</title>
<style>
	.form {
		background-color: aqua;
	}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="student" class="form">
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		
		
<%-- 		Country: <form:select path="country">
			<form:option value="Germany" label="Germany"/>
			<form:option value="France" label="France"/>
		</form:select> --%>
		
		
		Country: <form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		
		
		<br><br>
		Favorite Language:
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C++ <form:radiobutton path="favoriteLanguage" value="C++"/>
		JavaScript <form:radiobutton path="favoriteLanguage" value="JavaScript"/>
		
		
		
		<br><br>
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>
		
		
		<br><br>
		<input type="submit" value="Submit"/>
		
	</form:form>
</body>
</html>