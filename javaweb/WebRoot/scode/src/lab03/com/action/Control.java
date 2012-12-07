package lab03.fm.action;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import lab03.fm.service.Guessnum;

public class Control extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Control() {
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

//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out
//				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//		out.print("    This is ");
//		out.print(this.getClass());
//		out.println(", using the GET method");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
		response.setContentType("text/html;charset=GB2312");
		HttpSession session = request.getSession();
		String ans_num = (String) session.getAttribute("answer_number");
		String user_num = (String) session.getAttribute("user_number");
		System.out.println("answer_number=" + ans_num);
		Guessnum game = new Guessnum();
		game.setanswer_number(ans_num);
		game.setuser_number(user_num);
		boolean right = game.right_guess();
		RequestDispatcher rd = request.getRequestDispatcher("answer_judge.jsp");
		request.setAttribute("guess", right);
		rd.forward(request, response);
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

//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out
//				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//		out.print("    This is ");
//		out.print(this.getClass());
//		out.println(", using the POST method");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
		response.setContentType("text/html;charset=GB2312");
		HttpSession session = request.getSession();
		String ans_num = (String) session.getAttribute("answer_number");
		String user_num = (String) request.getParameter("user_number");
		System.out.println("answer_number=" + ans_num);
		Integer count = (Integer)session.getAttribute("count");
		Guessnum game = new Guessnum();
		game.setanswer_number(ans_num);
		game.setuser_number(user_num);
		game.setCount(count);
		boolean right = game.right_guess();
		boolean check = game.check_count();
		RequestDispatcher rd = request.getRequestDispatcher("answer_judge.jsp");
		request.setAttribute("guess", right);
		request.setAttribute("check", check);
		request.setAttribute("less", game.less());
		if(count != null)
			session.setAttribute("count", new Integer(count.intValue() + 1));
		else
			session.setAttribute("count", new Integer(1));
		rd.forward(request, response);
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
