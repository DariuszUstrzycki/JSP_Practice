<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<html>
   <head>
      <title>Accessing Request Parameters</title>	
 </head>
<body>
     

      <font size='5'>
         Skillset for:
      </font>

      <%-- Access the lastName and firstName request parameters
           parameters by name --%>
      <c:out value='${param.lastName}'/>, 
      <c:out value='${param.firstName}'/><br><br>
---------------------------------------------------------------------------<br>
      <%-- Show all request parameters and their values --%>
      
         All Request Parameters:
      <br><br>

      <%-- For every String[] item of paramValues... --%>
      <c:forEach var='entry' items='${paramValues}'> 
         ${entry.key}: 								  <%-- Show the key, which is the request parameter name --%>
           
            <c:forEach var='element' items='${entry.value}'> <%-- Iterate over the values of a String[] associated with this request parameter --%>
               ${element}, 									 <%-- Show the String value --%>
            </c:forEach>
            <br>
      </c:forEach>
--------------------------------------------------------------------------------<br>
      <%-- Show values for the languages request parameter --%>
     
         Languages:<br><br>

     
      <c:forEach var='lg' items='${paramValues.languages}'>  <%-- paramValues.languages is a String [] of values for the languages request parameter --%>
         ${lg},
      </c:forEach>

      <p>
	--------------------------------------------------------------------------------<br>
 <%-- Show the first value of the param.languages map entry, (1st value of the String[])--%>
     	${param.languages}
   </body>
</html>	

</body>
</html>