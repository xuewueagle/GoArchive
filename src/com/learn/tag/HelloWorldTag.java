package com.learn.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class HelloWorldTag extends TagSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	public int doStartTag() throws JspException {
		JspWriter out = this.pageContext.getOut();
		try {
			out.println("自定义标签大爷你好！");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return TagSupport.SKIP_BODY; // 直接结束标签
	}

}
