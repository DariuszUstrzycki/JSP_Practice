<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
This page sets attribute ("myName", "Darek") on the request.<br>
<% request.setAttribute("myName", "Darek");%>
"myName's"" value can be read from the request object: <br><%= request.getAttribute("myName")%>

<br><br><a href='display.jsp'>click here to see this attribute is not present in the new request</a><br><br>

But we can also set an attribute ("name", "Bolek") on the session
<% session.setAttribute("name", "Bolek"); %>


</body>
</html>