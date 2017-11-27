<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String uri = request.getRequestURI();%>
This is the request's URI:<br>
<%=uri%><br><br>


<%

Enumeration<String> headerNames = request.getHeaderNames();
String allHeaders = "<br><table border=1>";
while(headerNames.hasMoreElements()){
	allHeaders += "<tr><td>";
	allHeaders += headerNames.nextElement() + "<br>"; 
	allHeaders += "</td></tr>";
}

allHeaders += "</table>";

%>

These are the request headers:
<%= allHeaders %>

</body>
</html>