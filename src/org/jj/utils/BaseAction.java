package org.jj.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.li.utils.bootstrapTable.BootstrapTableControllerIntf;

public class BaseAction extends BootstrapTableControllerIntf implements ServletRequestAware, ServletResponseAware,SessionAware {

	private static final long serialVersionUID = 1L;

	public HttpServletRequest request;
	public HttpServletResponse response;
	public Map<String, Object> session;


	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public void responseInfo(String info) {
		try {
			responseInfo(info, "UTF-8", null);
		} catch (Exception e) {
		}
	}

	public void responseInfo(String info, String encoding, String contentType) {
		try {
			if (contentType == null) {
				contentType = "text/html";
			}
			this.response.setContentType(contentType);
			this.response.setCharacterEncoding(encoding);
			PrintWriter pw = this.response.getWriter();
			pw.write(info);
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void responseJson(String jsonStr) {
		responseInfo(jsonStr, "UTF-8","application/json");
	}
	protected Object getRequestAttribute(String key) {
		return this.request.getAttribute(key) != null ? this.request
				.getAttribute(key) : null;
	}

	protected Object getRequestParameter(String key) {
		return this.request.getParameter(key) != null ? this.request
				.getParameter(key) : null;
	}
	protected String getRequestParameter(String key, String nullStr) {
		try {
			String r = this.request.getParameter(key) != null ? this.request
					.getParameter(key) : nullStr;
			return r;
		} catch (Exception e) {
			return nullStr;
		}
	}
	protected String getParaneterToString(String key) {
		try {
			String r = this.request.getParameter(key) != null ? this.request
					.getParameter(key) : null;
			return r;
		} catch (Exception e) {
			return null;
		}
	}

	protected Integer getRequestParameterForInt(String key) {
		return Integer.valueOf(getRequestParameter(key, "-1"));
	}

	protected Integer getRequestAttributeForInt(String key) {
		return Integer.valueOf(getRequestAttribute(key).toString());
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

}