package pl.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		// Interface Enumeration<E> has only 2 methods
		Enumeration<String> e = request.getHeaderNames();
        while (e.hasMoreElements()) {
            String str = (String)e.nextElement();
            out.println(str);
            out.append("sometext");
        }
        
		for (Enumeration<String> en = request.getHeaderNames(); en.hasMoreElements();) {
			String s = en.nextElement();
		}
        	


		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
