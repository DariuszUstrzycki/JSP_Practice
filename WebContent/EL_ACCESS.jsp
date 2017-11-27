<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>JSP  Home</title>
</head>
<body>
<p>This is EL_ACCESS.jsp file in project JSP(_Practice)</p>p>
<% 	List<String> names = new ArrayList<String>();
	names.add("Marco");names.add("David");
	pageContext.setAttribute("names", names);
%>
<strong>1. List </strong>: List<String> names = new ArrayList<String>();names.add("Marco");
pageContext.setAttribute("names", names);
 <br>ACCESSED BY <strong>{names[0]} </strong> RESULT ${names[0]}
<br><br>
<strong>2. Simple .</strong>: 	request.setAttribute("person", person); DEFINED BY Person person = new Employee();person.setName("Pankaj");
<br>ACCESSED BY <strong>{requestScope.person} </strong> RESULT ${requestScope.person}
<br><br>
<strong>3. Simple .</strong>:  without scope: ACCESSED BY<strong>{person} </strong> RESULT ${person}
<br><br>
<strong>4. Simple []</strong>: getServletContext().setAttribute("User_Cookie","TomcatUser");
<br>ACCESSED BY <strong>{applicationScope["User_Cookie"]} </strong> RESULT ${applicationScope["User_Cookie"]}
<br><br>
<strong>5. Multiples .</strong>: Employee emp = new Employee(); Address add = new Address(); and more.. session.setAttribute("employee", emp);
<br>ACCESSED BY <strong>{sessionScope.employee.address.address} </strong> RESULT ${sessionScope.employee.address.address}
<br><br>
<strong>6. Header information </strong>: ----------
<br>ACCESSED BY <strong>{header["Accept-Encoding"] </strong> RESULT ${header["Accept-Encoding"]}
<br><br>
<strong>7. Cookie </strong>: response.addCookie(new Cookie("User_Cookie","TomcatUser"));
<br>ACCESSED BY <strong>{cookie["User_Cookie"].value} </strong> RESULT  ${cookie["User_Cookie"].value}
<br><br>
<strong>8. pageContext </strong>: -----------
<br>ACCESSED BY <strong>{pageContext.request.method} </strong> RESULT HTTP Method is ${pageContext.request.method}
<br><br>
<strong>9. Context param </strong>: <context-param> <param-name>AppID</param-name> <param-value>123</param-value> </context-param>
<br>ACCESSED BY <strong>{initParam.AppID} </strong> RESULT ${initParam.AppID}
<br><br>
<strong>10.Arithmetic Operator </strong>: 
<br>ACCESSED BY <strong>{initParam.AppID + 200} </strong> RESULT ${initParam.AppID + 200}
<br><br>
<strong>11.Relational Operator </strong>:
<br>ACCESSED BY  <strong>{initParam.AppID < 200} </strong> RESULT ${initParam.AppID < 200}
<br><br>
<strong>12.Arithmetic Operator </strong>: 
<br>ACCESSED BY <strong>{initParam.AppID + 200} </strong> RESULT ${initParam.AppID + 200}
<br><br>

</body>
</html>