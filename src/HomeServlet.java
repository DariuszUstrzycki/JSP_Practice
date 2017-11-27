
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Setting some attributes
		Person person = new Employee();
		person.setName("Pankaj");
		
		request.setAttribute("person", person);
		
		Employee emp = new Employee();
		Address add = new Address();
		add.setAddress("Poland");
		emp.setAddress(add);
		emp.setId(1);
		emp.setName("Darekar");
		
		HttpSession session = request.getSession();
		session.setAttribute("employee", emp);
		
		response.addCookie(new Cookie("User_Cookie","TomcatUser"));
		getServletContext().setAttribute("User_Cookie","TomcatUser");
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/home.jsp");
		rd.forward(request, response);
	}

}
