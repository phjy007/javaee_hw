package org.apache.jsp.scode.web.lab02;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>测试得分</title>\r\n");
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
      out.write("    ");

    	int score = 0;
    	
    	String a1 = request.getParameter("q1");
    	a1 = new String(a1.getBytes("iso-8859-1"), "gb2312");
    	if("杨玉良".equals(a1)) {
    		score += 25;
    	}
    	
    	String a2 = request.getParameter("q2");
    	if(a2 != null)
    	a2 = new String(a2.getBytes("iso-8859-1"), "gb2312");
    	if("张江".equals(a2)) {
    		score += 25;
    	}
    	
    	String[] a3 = request.getParameterValues("q3");
    	if(a3 != null) {
	    	for(int i = 0; i< a3.length; i++) {
	    		a3[i] = new String(a3[i].getBytes("iso-8859-1"), "gb2312");
	    	}
	    	if((a3.length == 3) && "Servlet".equals(a3[0]) && "JSP".equals(a3[1]) && "Java Bean".equals(a3[2])) {
	    		score += 25;
	    	}
	    }
    	
    	String a4 = request.getParameter("q4");
    	if("T".equals(a4)) {
    		score += 25;
    	}
    
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <h4>你的成绩为：");
      out.print(score);
      out.write("</h4><br>\r\n");
      out.write("    ");

    	if(score == 100) {
    
      out.write("\r\n");
      out.write("    \t恭喜你获得了满分!\r\n");
      out.write("    ");
	} else if(score <=75) {
    
      out.write("\r\n");
      out.write("    \t加油！再仔细想想争取更高分！\r\n");
      out.write("    ");
  } else { 
      out.write("\r\n");
      out.write("    \t哎呀！分数有点低，再接再厉！\r\n");
      out.write("    ");
  } 
      out.write("\r\n");
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
