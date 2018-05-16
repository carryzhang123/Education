package com.li.utils.bootstrapTable;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;

public abstract class BootstrapTableControllerIntf extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2050925847425586767L;
	public BootstrapTableControllerIntf boot=this;
	public void responseBootstrapTablePage(PageModel pageModel){
		Map<String,Object> respMap=new HashMap<String, Object>();
		respMap.put("rows",pageModel.getInfoList());
		respMap.put("total",pageModel.getTotal());
		String respJsonStr=new JSONObject(respMap).toJSONString();
		responseJson(respJsonStr);
	}
	public abstract void responseJson(String jsonStr);
}
