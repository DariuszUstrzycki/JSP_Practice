<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%--Comment: OR Below Statement: Both are Same--%>
<%@page import="java.io.*, java.lang.*"%>
<%@	page	import="java.util.Date,	java.util.Arrays"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>
	<%-- JSP comment --%>
	Hello BeginnersBook Readers!
	<br> Current time is:
	<%=new java.util.Date()%>
	<br>
	<br>
	<%
		out.print("Hello, Sample JSP code");
	%>
	<br>
	<br>
	<%
		String string1 = "JSP scriptlet";
	%>
	<%= "the tested string is: " + string1 %><br>
	<%!String string2 = "";%>
	<h1>
		<%--This is an Expression statement--%>
		Welcome to
		<%=string1%>
	</h1>
	<%
		if (string1.equals("JSP scriptlet")) {
	%>
	Yes, the expression above returned true for the string: <%=string1%><br>
	<%
		} else {
	%>
	No, the expression returned false<br>
	<%
		}
	%>
	<%--same thing can be done in this way also--%>
	<%
		if (string1.equals("JSP scriptlet"))
			out.println("<br>Yes, the expression above returned true for the string: " + string1);
		else
			out.println("<br>No, the expression returned false");
	%>
</body>
</html>