<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String data2 = (String) session.getAttribute("session-uid");
		// out.println("Hi " + data2 + ". Id/Password are wrong. Please try Again.");
	%>
	Hi <%=data2%><br>
	Id/Password are wrong. Please try Again.
</body>
</html>