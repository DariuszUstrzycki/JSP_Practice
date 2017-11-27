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

	<%
		String[] animals = { "Pies", "Kot", "Nietoperz", "Ważka", "Jeż", "Surykatka", "Dziobak" };
	%>
	<c:forEach var="animal" begin="2" end="5" step="2" varStatus="loopVar" items="<%=animals%>">
		index =	${loopVar.index},	loop =	${loopVar.count},	
		<c:out value="${animal}" /><br> <%-- albo  ${animal}<br> --%>
	</c:forEach>

</body>
</html>