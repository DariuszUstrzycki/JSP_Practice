

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReadAllParams")
public class ReadAllParams extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String START_HTML = "<html><body>";
	private static final String END_HTML = "</body></html>";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		Enumeration<String> en = request.getParameterNames();
		String values = "";
		
		while (en.hasMoreElements()) {
			
			String name = en.nextElement();
			String[] allValues = request.getParameterValues(name);
			
			if(allValues != null && allValues.length > 1){
				
				for(String value : allValues){
					values += value + ", ";
				}
				
			} else {
				values += allValues[0];
			}
			values += "<br>";
		}
		
		
		// response.setAttribute()
		
		
		out.append(values);
		
		out.append("you're in Servlet /ReadAllParams");
		
		response.sendRedirect("final.jsp");
		
	//	request.getRequestDispatcher("/final.jsp").forward(request, response);

	}

}
