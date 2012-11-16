package lab03.com.servlet;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.Enumeration;

public class Convert extends TagSupport {
	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		return super.doAfterBody();
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return super.doEndTag();
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		return super.doStartTag();
	}

	@Override
	public String getId() {
		// TODO Auto-generated method stub
		return super.getId();
	}

	@Override
	public Tag getParent() {
		// TODO Auto-generated method stub
		return super.getParent();
	}

	@Override
	public Object getValue(String k) {
		// TODO Auto-generated method stub
		return super.getValue(k);
	}

	@Override
	public Enumeration<String> getValues() {
		// TODO Auto-generated method stub
		return super.getValues();
	}

	@Override
	public void release() {
		// TODO Auto-generated method stub
		super.release();
	}

	@Override
	public void removeValue(String k) {
		// TODO Auto-generated method stub
		super.removeValue(k);
	}

	@Override
	public void setId(String id) {
		// TODO Auto-generated method stub
		super.setId(id);
	}

	@Override
	public void setPageContext(PageContext pageContext) {
		// TODO Auto-generated method stub
		super.setPageContext(pageContext);
	}

	@Override
	public void setParent(Tag t) {
		// TODO Auto-generated method stub
		super.setParent(t);
	}

	@Override
	public void setValue(String k, Object o) {
		// TODO Auto-generated method stub
		super.setValue(k, o);
	}

//	@Override
//	public void doTag() throws JspException, IOException {
//		JspWriter out = getJspContext().getOut();
//		out.println("ºÚµ•±Í«©£°");
//	}
}
