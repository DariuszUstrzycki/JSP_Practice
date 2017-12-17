<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
      <title>EL Implicit Objects: Request Parameters</title>
   </head>

   <body>
      <form action='param.jsp'>	
 <table>
            <tr>
               <td>First Name:</td>
               <td><input type='text' name='firstName' /></td>
            </tr>
            <tr>
               <td>Last Name:</td>
               <td><input type='text' name='lastName' /></td>
            </tr>
            <tr>
               <td>
                  Select languages that you have worked with: 
               </td>
               <td>
                  <select name='languages' size='7' multiple='true'>
                     <option value='Ada'>Ada</option>
                     <option value='C'>C</option>
                     <option value='C++'>C++</option>
                     <option value='Cobol'>Cobol</option>
                     <option value='Eiffel'>Eiffel</option>
                     <option value='Objective-C'>
                        Objective-C
                     </option>
                     <option value='Java'>Java</option>
                  </select>
               </td>
            </tr>
         </table>
         <p>
			<input type='submit' value='Finish Survey' />
      
	</form>
   </body>
</html>	
</body>
</html>