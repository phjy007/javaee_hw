package org.apache.jsp.scode.web.lab02;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class exam_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<xmp>\r\n");
      out.write("\r\n");

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
      out.write("    <title>在线小测试</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  \t<h2>在线小测试</h2>\r\n");
      out.write("  \t<form action=\"./lab02/result.jsp\">\r\n");
      out.write("  \t\t<div>\r\n");
      out.write("\t\t  \t<h4>一、填空题</h4>\r\n");
      out.write("\t\t  \t<div>\r\n");
      out.write("\t\t  \t\t现在的复旦校长姓名？<input name=\"q1\" type=\"text\" value=\"\" size=\"6\"/>\r\n");
      out.write("\t\t  \t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("  \t\t<div>\r\n");
      out.write("  \t\t\t<h4> 二、单选题： </h4>\r\n");
      out.write("  \t\t\t<div>你在哪个校区？\r\n");
      out.write("  \t\t\t  <input name=\"q2\" type=\"radio\" value=\"邯郸\">邯郸\r\n");
      out.write("  \t\t\t  <input name=\"q2\" type=\"radio\" value=\"张江\">张江\r\n");
      out.write("  \t\t\t  <input name=\"q2\" type=\"radio\" value=\"江湾\">江湾\r\n");
      out.write("  \t\t\t</div>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div>\r\n");
      out.write("  \t\t\t<h4> 三、多选题： </h4>\r\n");
      out.write("  \t\t\t<div>Java Web编程已学过什么？\r\n");
      out.write("  \t\t\t  <input name=\"q3\" type=\"checkbox\" value=\"Servlet\"/>Servlet\r\n");
      out.write("  \t\t\t  <input name=\"q3\" type=\"checkbox\" value=\"JSP\" />JSP\r\n");
      out.write("  \t\t\t  <input name=\"q3\" type=\"checkbox\" value=\"Java Bean\"/>Java Bean\r\n");
      out.write("  \t\t\t  <input name=\"q3\" type=\"checkbox\" value=\"Java Mail\" />Java Mail\r\n");
      out.write("  \t\t\t</div>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<div>\r\n");
      out.write("  \t\t\t<h4> 四、判断题： </h4>\r\n");
      out.write("  \t\t\t<div>学了Java Web编程是否有用？<input name=\"q4\" type=\"text\" size=\"5\"/> （T 或 F）</div>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \t\t<input type=\"reset\" value=\"重置\"> \r\n");
      out.write("  \t\t<input type=\"submit\" value=\"提交\"> \r\n");
      out.write("  \t</form>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("</xmp>");
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
