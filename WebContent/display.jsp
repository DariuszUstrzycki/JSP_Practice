<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%="request.getAttribute(\"myName\") returns:"%><br> 
<%= request.getAttribute("myName") %><br>
Looks like the attribute set on the request was set on the previous request and this is a new request<br><br>

The session attribute is preserved:
<br><%= session.getAttribute("name") %><br>


</body>
</html>