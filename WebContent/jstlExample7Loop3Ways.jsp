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

Iterating over the values of a single parameter:<br>
Pierwszy sposób:<br>
<c:forEach var="role"  items="${paramValues.role}" >
<c:out value = "${role}" /><br>
</c:forEach>
<br>
<br>
Drugi sposób:<br>
<c:forEach var="role"  items="${paramValues.role}" >
	${role}<br>
</c:forEach>
<br>
<br>
Trzeci sposób:<br>
<%String[] roles = request.getParameterValues("role");%>
<c:forEach var="role"  items="<%=roles%>" >
	${role}<br>
</c:forEach>
<br>
<br>
Aby zadzialał czwarty sposób nie wolno zapomnieć o escape dla "" w argumencie:<br>
 <c:forEach var="role"  items="<%=request.getParameterValues(\"role\")%>" >
 ${role}<br>
</c:forEach>


</body>
</html>