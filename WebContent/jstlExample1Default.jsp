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

<%-- See how escapeXml works. If  escapeXml="true", the text won't be bold--%>
<c:out	value="<b>escapeXml set to true no bold text</b>" escapeXml="true"/>
<br>
<c:out	value="<b>escapeXml set to false - bold text</b>" escapeXml="false"/>
<br>
<br>
<%-- See how default value works 
	

Wydaje mi się, że jest tak dlatego ponieważ język EL operuje na obiektach o zasięgu request, session itd. 
https://www.tutorialspoint.com/jsp/jsp_expression_language.htm 
a tutaj do ${} podstawiasz mu zwykłą zmienną instancyjną i on jej nie widzi, ale nie pokazuje błędu bo myśli, 
że to nazwa jakiegoś parametru który przyjdzie, a taki nie istnieje i w tym przypadku wyrażenie ${str} czy ${s}
 będzie zawsze nullem. Nawet jak wklepie ten kod do Intellij Idea to od razu te zmienne w tagu <%!> zmienia na szaro, 
 że są nieużywane. Powinieneś użyć np. <c:out value="<%=zmienna>"--%>
<%!	String str = null; %>
<c:out	value= "This 1. String is null: ${str}, but this text here makes it not null, so defaut value will not be displayed!!!:" default="1. This is default value but im not displayed"/>
<br>
<br>
<%!	String s = new String("2. Im really not a null String but the default value will be displayed! Why?!"); %>
<c:out	value= "${s}" default="2. This is also default value"/>
<br>
<br>
<%!	String s2 = "3. Im really not a null String but the default value will be displayed! Why?!"; %>
<c:out	value= "${s2}" default="3. This is also default value"/>

<br>
<c:out	value= "<%=str%>" default="4. This is default value should be displayed because I used \"<%=str%>\""/>
<br>
<%!		String s1 = new String("5. Im not a null String and must be displayed when called in value=\\\"<%=s%"); %>
<c:out	value= "<%=s1%>" default="5. This is default value. It should NOT be displayed because I used \"<%=s%>\""/>

</body>
</html>