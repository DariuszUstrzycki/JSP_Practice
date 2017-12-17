<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

1. ${message} <br>

2. <%=request.getAttribute("message")%><br>

<%	String	requestAttrib =	request.getAttribute("message").toString();	%>
<c:out	value="3."	default="no	attrib"/>
<c:out	value="<%=requestAttrib%>"	default="no	attrib"/><br>

<%	String	nullVal = (String) request.getAttribute("xyz");	%>
<c:out	value="4."	default="no	attrib"/>
<c:out	value="<%=nullVal%>"	default="no	attrib"/>
</body>
</html>