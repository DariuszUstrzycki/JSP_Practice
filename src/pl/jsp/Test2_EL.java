package pl.jsp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

/**
 * Servlet implementation class Test2_EL
 */
@WebServlet("/Test2_EL")
public class Test2_EL extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		@SuppressWarnings("unchecked")
		List<Employee> employeeList = (List<Employee>) session.getAttribute("employeeList");
		if(employeeList == null) {
			employeeList = new ArrayList<>();
		}
		
		employeeList.add(new Employee("John", 1, "junior"));
		//employeeList.add(new Employee("Mary", 2, "senior"));
		//employeeList.add(new Employee("Brian", 3, "executive"));
		
		session.setAttribute("employeeList", employeeList);
		request.setAttribute("employeeList", employeeList);
		request.setAttribute("greeting", "hello!!!");
		
		getServletContext().getRequestDispatcher("/test2.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}

}
