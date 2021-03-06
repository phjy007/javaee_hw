package project.com.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.com.model.Experiment;
import project.com.model.User;
import project.com.service.SqlConn;

public class refreshExperiment extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public refreshExperiment() {
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
		
//		String req_username = (String)request.getParameter("username");
//		req_username = new String(req_username.getBytes("iso-8859-1"), "gb2312");
//		String req_password = (String)request.getParameter("password");
//		req_password = new String(req_password.getBytes("iso-8859-1"), "gb2312");
//		System.out.println(req_username+"  "+req_password);
		
		SqlConn sqlconn = new SqlConn();
		//int userid = -1;
		
		String allusers = "select * from javaee_pj_user";
		//ArrayList<User> users = sqlconn.allUsers(allusers);
		
		//int usertype = -1;
		
		String page_s = (String)request.getParameter("page");
		int pageNo = Integer.parseInt(page_s);
		Integer expCount = (Integer)session.getAttribute("expCount");
		
		String allexperiments = "select * from javaee_pj_experiment limit " + 12 * (pageNo-1) + ",12";
		ArrayList<Experiment> experiments = sqlconn.allExperiments(allexperiments);
		
//		boolean logined = false;
//		for(User u:users) {
//			if(u.getUsername().equals(req_username) && u.getPassword().equals(req_password)) {
//				logined = true;
//				usertype = u.getUsertype();
//				userid = u.getId();
//				break;
//			}
//		}
//		System.out.println(logined);	
		
		//if(logined) {
			//session.setAttribute("logined", logined);
			//session.setAttribute("username", req_username);
			//session.setAttribute("usertype", usertype);
			//session.setAttribute("userid", userid);
			session.setAttribute("experiments", experiments);
			response.sendRedirect("./index.jsp?page=" + pageNo);
		//} else {
			//session.setAttribute("logined", logined);
			//response.sendRedirect("./login.jsp");
		//}
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
