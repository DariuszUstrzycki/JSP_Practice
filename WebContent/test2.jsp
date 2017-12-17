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

This is test2.jsp - joined with Test2_EL servlet - to test EL
<br><br><br>
Dla request.setAttribute("greeting", "hello!!!"):<br>  
- nie dziala: dolar{param.greeting}:   &nbsp;&nbsp;&nbsp;&nbsp;      ${param.greeting}<br>
- dziala: dolar{requestScope.greeting}  &nbsp;&nbsp;&nbsp;&nbsp;     ${requestScope.greeting}<br>
- dziala: dolar{requestScope["greeting"]}  &nbsp;&nbsp;&nbsp;&nbsp;  ${requestScope["greeting"]}<br>
<br>
Dla session.setAttribute("employeeList", employeeList);<br>
- dziala: dolar{sessionScope.employeeList}  &nbsp;&nbsp;&nbsp;&nbsp;   ${sessionScope.employeeList}<br>
- dziala: dolar{sessionScope["employeeList"]} &nbsp;&nbsp;&nbsp;&nbsp;   ${sessionScope["employeeList"]}<br>
<br><br>
To access the 0th elementh of the list:<br>
 - dziala: dolar{sessionScope.employeeList[0]}  &nbsp;&nbsp;&nbsp;&nbsp;      ${sessionScope.employeeList[0]}<br>
To access the variables of this element dolar{sessionScope.employeeList[0].name}  &nbsp;&nbsp;&nbsp;&nbsp;  ${sessionScope.employeeList[0].name}<br>

<%-- See how default value works --%>
<%! String str = null; %>
<c:out  value= "This 1. String is null: ${str}, so default value should be displayed but it's not!!!: " default="1. This is default value but im not displayed"/>
<br>
<br>
<%! String s = "Over!"; %>
<c:out  value= "${s}" default="2. This is also default value"/>



</body>
</html>