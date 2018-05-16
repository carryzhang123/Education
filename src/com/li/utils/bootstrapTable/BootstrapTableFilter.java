package com.li.utils.bootstrapTable;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BootstrapTableFilter implements Filter{

	public void destroy() {
		System.out.println("Info:结束Bootstrap Server端分页拦截器 -->Time:"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain f) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)resp;
		PageModel pageModel=new PageModel();
	
		Object pageSize=null;
		Object pageNumber=null;
		Object serach=null;
		Object sortOrder=null;
		Object serachList=null;
		pageSize=request.getParameter("pageSize");
		pageNumber=request.getParameter("pageNumber");
		serach=request.getParameter("serach");
		sortOrder=request.getParameter("sortOrder");
		serachList=request.getParameter("serachList");
		if(pageSize==null||pageNumber==null){
			//过滤非bootstrapTable请求
			f.doFilter(request, response);
			return;
		}
		System.out.println("DEBUG:load bootstrapTable request ->URL:"+request.getRequestURI()+"   ->pageNumber:"+pageNumber+",pageSize:"+pageSize);
		//必要信息
		if(sortOrder!=null)pageModel.setSortOrder(request.getParameter("sortOrder").toString());
		try {
			pageModel.setPageSize(Integer.valueOf(pageSize.toString()));
			pageModel.setPageNumber(Integer.valueOf(pageNumber.toString()));
			pageModel.setSerach(serach!=null?serach.toString():null);
			pageModel.setSerachList(serachList!=null?serachList.toString().split(","):null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute(PageModel.PAGE_MODEL,pageModel);
		f.doFilter(request, response);
	}

	public void init(FilterConfig conf) throws ServletException {
		System.out.println("Info:初始化Bootstrap Server端分页拦截器 -->Time:"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	}
}
