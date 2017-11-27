<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%-- Przykład	załączania	css:--%>
	<link href='<c:url	value="/dist/css/sb-admin-2.css"/>' rel="stylesheet">
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- Przykład	odnośnika:--%>
	<c:url value="/urlAddress" /> <%-- wyswietla: /JSP/urlAddress:--%>
	<br>
	<a href='<c:url	value="/src/pl/jsp/Servlet1"/>' >Link</a>
	<br>
	
	
	

</body>
</html>