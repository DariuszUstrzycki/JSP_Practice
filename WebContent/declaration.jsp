<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--class level variables --%>
	<%!String name = "Chaitanya";%>
	<%!int age = 27;%>
	<%="Name is: " + name%><br>
	<%="AGE: " + age%><br>


	<%!int sum(int num1, int num2, int num3) {
		return num1 + num2 + num3;
	}%>

	<%="Result is: " + sum(10, 40, 50)%>
</body>
</html>