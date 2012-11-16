package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=GB2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>首页：岳佳圆12212010024</title>\r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\t.wrapper {\r\n");
      out.write("\t\t\twidth:250px;\r\n");
      out.write("\t\t\t//border: 1px solid;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.exp_tilte {\r\n");
      out.write("\t\t\t//text-align:left;\r\n");
      out.write("\t\t\tcolor: #0066FF;\r\n");
      out.write("\t\t\tfont-size: 22px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t.source_title {\r\n");
      out.write("\t\ttext-align:left;\r\n");
      out.write("\t\t\tcolor:  #1A94E6;\r\n");
      out.write("\t\t\tfont-size: 18px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("    <CENTER><FONT SIZE=\"6\"><B>岳佳圆</B></FONT><FONT SIZE=\"3\"><B>(12212010024)</B></FONT></CENTER><br>\r\n");
      out.write("  \t");

  		String username = (String)session.getAttribute("username");
  		if("jw1201024".equals(username)) {
  	
      out.write("\r\n");
      out.write("  \t<div class=\"login_logout\" align=\"center\" style=\"font-size:12px; margin-bottom:5px;\">\r\n");
      out.write("  \t\t您已登录，按这里<a href=\"./logout.jsp\">退出</a>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t");

  		} else {
  	
      out.write("\r\n");
      out.write("  \t<div class=\"login_logout\" align=\"center\" style=\"font-size:12px; margin-bottom:5px;\">\r\n");
      out.write("  \t\t请<a href=\"./login.jsp\">登录</a>查看源代码\r\n");
      out.write("  \t</div>\r\n");
      out.write("  \t");

  	    }
  	
      out.write("\r\n");
      out.write("  \t<form method=post action=\"\">\r\n");
      out.write("\t<table align=\"center\" border=\"1\" bordercolorlight=\"#ccaaff\" cellpadding=\"2\" bordercolordark=\"#ffffff\" cellspacing=\"0\"> \r\n");
      out.write("\t<tr bgcolor=\"#CCE0FF\"><td align=\"center\" width=\"200px\">程序名</td><td align=\"center\" width=\"200px\">源代码</td></tr>\r\n");
      out.write("\t<tr><td class=\"cap\" colspan=\"2\"  align=\"center\" style=\"background-color:#FFEEEE\">第一次实验</td></tr>\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab01/first\">FirstServlet</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab01&file=FirstServlet.java\">FirstServlet.java</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab01/login.html\">Login</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab01&file=login.html\">Login.html</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab01&file=GetPostData.java\">GetPostData.java</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td class=\"cap\" colspan=\"2\" align=\"center\" style=\"background-color:#FFEEEE\">第二次实验</td></tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab02/input.jsp\">Calculate the cube</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=input.jsp\">input.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=calculate.jsp\">calculate.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=output.jsp\">output.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab02/exam.jsp\">Online exam</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=exam.jsp\">exam.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=result.jsp\">result.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab02/calc.jsp\">Java Bean Calculation</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=calc.jsp\">calc.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=calculate_result.jsp\">calculate_result.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr><td>&nbsp;</td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=CalcBean.java\">CalcBean.java</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><a href=\"./lab02/travel.jsp\">Travel Cost</a></td>\r\n");
      out.write("\t\t<td><a href=\"./ReadScode?lab=lab02&file=travel.jsp\">travel.jsp</a></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("  </form>\r\n");
      out.write("  \t\r\n");
      out.write("  \t\r\n");
      out.write("  \t\t<!--div class=\"exp_tilte\">\r\n");
      out.write("  \t\t\t<b>第一次实验</b>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"source_title\">\r\n");
      out.write("  \t\t\t链接\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"items\">\r\n");
      out.write("  \t\t\t<a href=\"./lab01/first\">firstservlet</a>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"items\">\r\n");
      out.write("  \t\t\t<a href=\"./lab01/login.html\">login</a>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"source_title\">\r\n");
      out.write("  \t\t\t源程序\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"items\">\r\n");
      out.write("  \t\t\t<a href=\"/javaweb/ReadScode\">FirstServlet.java</a>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"items\">\r\n");
      out.write("  \t\t\t<a href=\"/javaweb/ReadScode\">login.html</a>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div class=\"items\">\r\n");
      out.write("  \t\t\t<a href=\"/javaweb/ReadScode\">GetPostData.java</a>\r\n");
      out.write("  \t\t</div-->\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
