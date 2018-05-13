package com.learn.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class OneTag extends TagSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	
	@Override
	public int doStartTag() throws JspException {
		
		JspWriter out=this.pageContext.getOut();
		try {
			out.println(name+":自定义有属性的标签大爷你好！");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return TagSupport.SKIP_BODY; // 直接结束标签
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
