package org.apache.jsp.scode.web.lab02;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class calculate_005fresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>计算结果</title>\r\n");
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
      out.write("  \t");

  		int num1, num2;
  		String op;
  		String sn1 = request.getParameter("n1");
  		String sn2 = request.getParameter("n2");
  		if(sn1 != "" && sn2 != "") {
			num1 = Integer.parseInt(sn1);
			num2 = Integer.parseInt(sn2);
			op = request.getParameter("operator");
	
      out.write("\r\n");
      out.write("\t\t");
      lab02.com.servlet.CalcBean calcBean = null;
      synchronized (request) {
        calcBean = (lab02.com.servlet.CalcBean) _jspx_page_context.getAttribute("calcBean", PageContext.REQUEST_SCOPE);
        if (calcBean == null){
          calcBean = new lab02.com.servlet.CalcBean();
          _jspx_page_context.setAttribute("calcBean", calcBean, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\t \t");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("calcBean"), "n1",
num1);
      out.write("\r\n");
      out.write("\t \t");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("calcBean"), "n2",
num2);
      out.write("\r\n");
      out.write("\t \t");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("calcBean"), "oper",
op);
      out.write("\r\n");
      out.write("\t    <h4>\r\n");
      out.write("    \t计算的结果是：");
      out.print(calcBean.getResult());
      out.write("\r\n");
      out.write("    </h4>\r\n");
      out.write("\t\r\n");
      out.write("\t");
 
		} else {
	
      out.write("\r\n");
      out.write("\t\t<h4>您输入的数值有误，请重试。<a href=\"./lab02/calc.jsp\">返回</a></h4>\r\n");
      out.write("\t");
  
	   } 
	
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("   </body>\r\n");
      out.write("\t</html>\r\n");
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
