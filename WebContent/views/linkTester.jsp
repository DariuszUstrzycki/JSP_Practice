<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<a href='receiver' >receiver - 1.szuka w tym samym folderze co ta jsp file: http://localhost:8080/JSP_Practice/views/receiver</a><br>
<a href='/receiver' >/receiver - 2.omija contextpath: http://localhost:8080/receiver</a><br>

<br>Te działają:<br>
<a href='/JSP_Practice/receiver' >3. /JSP_Practice/receiver </a><br>
<a href='${pageContext.request.contextPath}/receiver' >4. dollar{pageContext.request.contextPath}/receiver</a><br>
<br><br>

</body>
</html>