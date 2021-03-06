package project.com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.com.service.SqlConn;

import project.com.model.*;

public class searchExperimentServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public searchExperimentServlet() {
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

		HttpSession session = request.getSession();
		
		String expname = (String)request.getParameter("expname");
		expname = new String(expname.getBytes("iso-8859-1"), "gb2312");
		
		String search_type = (String)request.getParameter("search_type");
		search_type = new String(search_type.getBytes("iso-8859-1"), "gb2312");
		String searchExperiment = "";
		if("����".equalsIgnoreCase(search_type)) {
			searchExperiment = "SELECT * FROM javaee_pj_experiment WHERE expname LIKE \"%" + expname + "%\"";
		} else if("����".equalsIgnoreCase(search_type)) {
			searchExperiment = "SELECT * FROM javaee_pj_experiment WHERE expcontent LIKE \"%" + expname + "%\"";
		}
//		System.out.println(searchExperiment);
		SqlConn sqlconn = new SqlConn();
		ArrayList<Experiment> experiments = sqlconn.allExperiments(searchExperiment);
//		System.out.println("!!!!!!  ->>  " + experiments.size());
		session.setAttribute("search_experiment_result", experiments);
		response.sendRedirect("./search_experiment_result.jsp");
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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
