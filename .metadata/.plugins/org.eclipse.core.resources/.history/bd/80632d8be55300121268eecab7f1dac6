package lab04.fm.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lab03.fm.service.Guessnum;
import lab04.fm.service.SqlConn;

public class Control extends HttpServlet {
	
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
		request.setCharacterEncoding("gb2312");
		response.setContentType("text/html;charset=GB2312");
		HttpSession session = request.getSession();
		SqlConn sqlbean = (SqlConn)session.getAttribute("sqlbean");
		if(sqlbean == null){
			sqlbean = new SqlConn();
			session.setAttribute("sqlbean", sqlbean);
		}
		String action = request.getParameter("action");
		if("add".equalsIgnoreCase(action)){
			response.sendRedirect("./add_client.jsp"); 
			return;
		}
		else if("toAdd".equalsIgnoreCase(action)){
			try{
				String name = request.getParameter("name");
				name = new String(name.getBytes("iso-8859-1"), "GB2312");
				String phone = request.getParameter("phone");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				address = new String(address.getBytes("iso-8859-1"), "GB2312");
				String sql = "insert into client values('0','"+name+"', '"+phone+
					"','"+mobile+"','"+address+"')";
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else if("modify".equalsIgnoreCase(action)){
			response.sendRedirect("./modify_client.jsp?id="+request.getParameter("id"));
			return;
		}
		else if("toModify".equalsIgnoreCase(action)){
			try{
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				name = new String(name.getBytes("iso-8859-1"), "GB2312");
				String phone = request.getParameter("phone");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				address = new String(address.getBytes("iso-8859-1"), "GB2312");
				String sql = "update client set name = '"+name+"', phone = '"+phone+
					"', mobile = '"+mobile+"', address = '"+address+"' where id ="+id;
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else if("delete".equalsIgnoreCase(action)){
			try{
				String id = request.getParameter("id");
				String sql = "delete from client where id =" + id;
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else{
			response.sendRedirect("./show_error.jsp"); 
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
		request.setCharacterEncoding("gbk");
		response.setContentType("text/html;charset=GB2312");
		HttpSession session = request.getSession();
		SqlConn sqlbean = (SqlConn)session.getAttribute("sqlbean");
		if(sqlbean==null){
			sqlbean = new SqlConn();
			session.setAttribute("sqlbean", sqlbean);
		}
		String action = request.getParameter("action");
		if("add".equalsIgnoreCase(action)){
			response.sendRedirect("./add_client.jsp"); 
			return;
		}
		else if("toAdd".equalsIgnoreCase(action)){
			try{
				String name = request.getParameter("name");
				name = new String(name.getBytes("iso-8859-1"), "GB2312");
				String phone = request.getParameter("phone");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				address = new String(address.getBytes("iso-8859-1"), "GB2312");
				String sql = "insert into client values('0','"+name+"', '"+phone+
					"','"+mobile+"','"+address+"')";
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else if("modify".equalsIgnoreCase(action)){
			response.sendRedirect("./modify_client.jsp?id="+request.getParameter("id"));
			return;
		}
		else if("toModify".equalsIgnoreCase(action)){
			try{
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				name = new String(name.getBytes("iso-8859-1"), "GB2312");
				String phone = request.getParameter("phone");
				String mobile = request.getParameter("mobile");
				String address = request.getParameter("address");
				address = new String(address.getBytes("iso-8859-1"), "GB2312");
				String sql = "update client set name = '"+name+"', phone = '"+phone+
					"', mobile = '"+mobile+"', address = '"+address+"' where id ="+id;
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else if("delete".equalsIgnoreCase(action)){
			try{
				String id = request.getParameter("id");
				String sql = "delete from client where id ="+id;
				sqlbean.executeUpdate(sql);
			}catch(Exception ex){
				ex.printStackTrace();
				response.sendRedirect("./show_error.jsp"); 
				return;
			}
			response.sendRedirect("./show.jsp"); 
		}
		else{
			response.sendRedirect("./show_error.jsp"); 
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