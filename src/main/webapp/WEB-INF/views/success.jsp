<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${student }</h1>
<!--Print Seprate  -->
<h1>Name of Student ${student.name }</h1>
<h1>ID of Student ${student.id }</h1>
<h1>DOB of Student ${student.date }</h1>
<h1>Courses of Student ${student.courses }</h1>
<h1>Gender of Student ${student.gender }</h1>
<h1>Type of Student ${student.type }</h1>
<hr>
<h1>Student Address Street ${student.address.street }</h1>
<h1>Student Address City ${student.address.city }</h1>
</body>
</html>