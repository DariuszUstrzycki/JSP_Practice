<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
request.getRequestURL(): <%= request.getRequestURL() %><br><br>
request.getRequestURI(): <%= request.getRequestURI() %><br><br>
request.getQueryString: <%= request.getQueryString() %><br><br>
request.getRequestedSessionId(): <%= request.getRequestedSessionId() %><br><br><br>

	1. d{paramValues} to po prostu Map, ktora ma wszystkie klucze(city, state) i array z
	wartosciami dla kazdego klucza:
	<br> ${paramValues}
	<br>
	<br> 2. d{paramValues.city} daje tylko hashcode city arrayu:
	<br> ${paramValues.city}
	<br> 3. d{paramValues.city[0]} i d{paramValues.city[1] podaje nam zawartośc indeksow w arrayu z wartosciami:
	<br> ${paramValues.city[0]}
	<br> ${paramValues.city[1]}
	<br> <br> 
	<br> 4. d{paramValues.state} daje tylko hashcode state arrayu:
	<br> ${paramValues.state}
	<br> 5. A d{paramValues.state[0]} zwraca pierwszy indeks w arrayu z wartościami:
	<br> ${paramValues.state[0]} 
	<br><br>
	
	6. A tu wolamy d{param.state} : 
	<br> ${param.state}
	<br> co jest równowazne d{paramValues.state[0]}, poniewaz w state arrayu jest tylko jeden element
	
	
	<br><br><br>
	7. A to rezultat wywolania request.getParameterMap() w skryplecie:<br>

	<%=
		request.getParameterMap()
	%>



</body>
</html>