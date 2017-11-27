<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 Student name is ${ param.stuname } <br>
 Student Roll No is ${ param.rollno }
 
 Student name is <%= request.getParameter("stuname") %>
 Student Roll No is <%= request.getParameter("rollno") %>
</body>
</html>