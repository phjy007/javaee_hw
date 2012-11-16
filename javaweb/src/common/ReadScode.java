package common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class ReadScode extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ReadScode() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GB2312;");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
  		if("jw1201024".equals(username)) {
  			String lab = request.getParameter("lab");
  			String filename = request.getParameter("file");
  			out.print("<b>Lab</b>: " + lab + "<br>");
  			out.print("<b>File</b>:" + filename + "<br><br>");
  			String fileType = filename.substring(filename.length()-4, filename.length());
  			if(fileType.equalsIgnoreCase("java")) {
  				String filepath = "./scode/src/" + lab + "/com/servlet/" + filename;
  				response.sendRedirect(filepath);
  			} else if(fileType.equalsIgnoreCase("html") || fileType.equalsIgnoreCase(".jsp")) {
  				String filepath = "./scode/web/" + lab + "/" + filename;
  				if(fileType.equalsIgnoreCase(".jsp")) {
  					filepath += "_";
  				}
  				response.sendRedirect(filepath);
  			}
  		} else {
  			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
  			out.println("<HTML>");
  			out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
  			out.println("  <BODY>");
  			out.print("Äú»¹Î´µÇÂ¼£¬ÇëÏÈ");
  			out.print("<a href='./login.jsp'>µÇÂ¼</a>¡£");
  			out.println("  </BODY>");
  			out.println("</HTML>");
  			out.flush();
  			out.close();
  		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GB2312;");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
  		if("jw1201024".equals(username)) {
  			
  		} else {
  			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
  			out.println("<HTML>");
  			out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
  			out.println("  <BODY>");
  			out.print("Äú»¹Î´µÇÂ¼£¬ÇëÏÈ");
  			out.print("<a href='/javaweb/lgoin.jsp'" + "</a>");
  			out.println("  </BODY>");
  			out.println("</HTML>");
  			out.flush();
  			out.close();
  		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
