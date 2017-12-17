<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="pl.jsp.Employee, java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>testuje jak dziala for each na 2 sposoby</title>
</head>
<body>

you're on test1.jsp joined with Test1 - created to test forEach with JSP and EL/JSTL

	<table border=1>
		<c:forEach var="emp" items="${employeeList}">
			<%--allQuotes to list --%>
			<tr>
				<td>Employee's name is ${emp.name}</td>
				<td>${emp.id}</td>
				<td>${emp.rank}</td>
				<td><c:out value="${emp.name}"></c:out></td>
				<td><c:out value="${emp.id}"></c:out></td>
				<td><c:out value="${emp.rank}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	
	
	<%--UWAGA: tu moze byc request.getAttribute zamiast session.getAttribute --%>
	<%                      
	List<Employee> employeeList = (List<Employee>) session.getAttribute("employeeList");
	
	if(employeeList != null) {
	%> 
	<br><br><br>
	<table border=1>
		<tr>
			<th>name</th>
			<th>id</th>
			<th>rank</th>
		</tr>
		<%
			for (Employee emp : employeeList) {
		%>
		<tr>
			<td><%=emp.getName()%></td>
			<td><%=emp.getId()%></td>
			<td><%=emp.getRank()%></td>
		</tr>
		<%
			}
	} else {
		%>
		The data can't be accessed (The attribute is null)- contact your system administrator. 
	<%} %>
	</table> 
	
</body>
</html>