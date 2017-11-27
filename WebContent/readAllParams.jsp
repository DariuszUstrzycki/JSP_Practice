<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- razem z final.jsp and ReadAllParams.java ta strona sluzy do zabawy z parzesylaniem paramteres and
sendRedirecy oraz forward--%>
<%
String urlToServlet = "http://localhost:8080/JSP/pl/jsp/ReadAllParams";
String paraString = "?city=Cracow&city=Berlin&state=USA&state=Japan&river=Amazon";
%>

	<a href="ReadAllParams" + paraString>
		Click to pass the address bar paramaters 12345</a>

</body>
</html>