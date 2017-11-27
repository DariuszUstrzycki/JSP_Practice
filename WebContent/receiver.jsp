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
String requestParam = request.getParameter("city");
%>

REMEMBER: NO SREDNIK IN EXPRESSION!!!<br><br>
This is the value of the received parameter city<br>
displayed by Expression tag (just variable):
<%= requestParam  %><br><br>

This is the value of the received parameter city<br>
displayed by Expression tag (calling a method):
<%= request.getParameter("city") %><br><br>

This is the value of the received parameter city<br>
displayed by out.println:
<% out.println(requestParam); %><br>

</body>
</html>