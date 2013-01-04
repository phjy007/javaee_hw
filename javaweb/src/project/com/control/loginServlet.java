package project.com.control;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.com.control.*;
import project.com.service.*;
import project.com.model.*;
import java.sql.*;


public class loginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public loginServlet() {
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

		String req_username = (String)request.getParameter("username");
		req_username = new String(req_username.getBytes("iso-8859-1"), "gb2312");
		String req_password = (String)request.getParameter("password");
		req_password = new String(req_password.getBytes("iso-8859-1"), "gb2312");
//		System.out.println(req_username+"  "+req_password);
		
		SqlConn sqlconn = new SqlConn();
		
		String allusers = "select * from javaee_pj_user";
		ArrayList<User> users = sqlconn.allUsers(allusers);
		
		int usertype = -1;
		int userid = -1;
		
		String allexperiments = "select * from javaee_pj_experiment";
		ArrayList<Experiment> experiments = sqlconn.allExperiments(allexperiments);
		
		boolean logined = false;
		for(User u:users) {
			if(u.getUsername().equals(req_username) && u.getPassword().equals(req_password)) {
				logined = true;
				usertype = u.getUsertype();
				userid = u.getId();
				System.out.println("userid=" + userid);
				break;
			}
		}
		System.out.println(logined);	
		
		if(logined) {
			session.setAttribute("logined", logined);
			session.setAttribute("username", req_username);
			session.setAttribute("usertype", usertype);
			session.setAttribute("userid", userid);
			session.setAttribute("experiments", experiments);
			response.sendRedirect("./index.jsp");
		} else {
			session.setAttribute("logined", logined);
			response.sendRedirect("./login.jsp");
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
		HttpSession session = request.getSession();
		
		String req_username = (String)request.getParameter("username");
		req_username = new String(req_username.getBytes("iso-8859-1"), "gb2312");
		String req_password = (String)request.getParameter("password");
		req_password = new String(req_password.getBytes("iso-8859-1"), "gb2312");
//		System.out.println(req_username+"  "+req_password);
		
		SqlConn sqlconn = new SqlConn();
		int userid = -1;
		
		String allusers = "select * from javaee_pj_user";
		ArrayList<User> users = sqlconn.allUsers(allusers);
		
		String expCountSQL = "select count(*) as num from javaee_pj_experiment";
		Integer expCount = sqlconn.getCount(expCountSQL);
		//System.out.println("expCount=" + expCount);
		
		
		int usertype = -1;
		
		String allexperiments = "select * from javaee_pj_experiment limit 0, 12";
		ArrayList<Experiment> experiments = sqlconn.allExperiments(allexperiments);
		
		boolean logined = false;
		for(User u:users) {
			if(u.getUsername().equals(req_username) && u.getPassword().equals(req_password) && (u.getValidated() != 0)) {
				logined = true;
				usertype = u.getUsertype();
				userid = u.getId();
				break;
			}
		}
		
		if(logined) {
			session.setAttribute("logined", logined);
			session.setAttribute("username", req_username);
			session.setAttribute("usertype", usertype);
			session.setAttribute("userid", userid);
			session.setAttribute("experiments", experiments);
			session.setAttribute("expCount", expCount);
			response.sendRedirect("./index.jsp?page=1");
		} else {
			session.setAttribute("logined", logined);
			response.sendRedirect("./login.jsp");
		}
		
//		if("jw1201024".equals(username) && "281729".equals(password)) {
//			HttpSession session = request.getSession();
//			session.setAttribute("username", username);
//			session.setAttribute("password", password);
//			response.sendRedirect("./index.jsp");
//		} else {
//			out.print("µ«¬º ß∞‹£¨«Î÷ÿ ‘°£<a href=\"./login.jsp\">∑µªÿ</a>");
//		}
		
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
