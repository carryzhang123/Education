package com.li.utils.bootstrapTable;

import java.util.ArrayList;
import java.util.List;


public class PageModel {
	private String err;
	
	public String getErr() {
		return err;
	}
	public PageModel setErr(String err) {
		this.err = err;
		return this;
	}
	public PageModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PageModel(Integer pageNumber, Integer pageSize) {
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
	}
	public static String PAGE_MODEL="page_model_171009";
	/**
	 * 响应内容list::必须
	 */
	public List<Object> infoList=new ArrayList<>();
	/**
	 * 当前第几页(页码)::必须
	 * 请求内容
	 */
	public Integer pageNumber=0;//当前页
	/**
	 * 每页的记录行数::必须
	 * 请求内容
	 */
	public Integer pageSize=0;
	/**
	 * 信息总记录数
	 * 响应内容
	 */
	public Integer total=0;
	
	/**
	 * 搜索内容::页面使用搜索功能时使用
	 * 请求内容
	 */
	public String serach="";//搜索内容
	/**
	 * 搜索内容:多个key
	 * 请求内容
	 */
	public String[] serachList=new String[0];
	public Boolean checkServerPaginationParams(){
		if(this.pageNumber==null||this.pageSize==null||this.pageNumber==0||this.pageSize==0)return false;
		return true;
	}
	public Integer getNowPageStart() {
		return (pageNumber-1)*pageSize;
	}
	/**
	 * 
	 * 排序方式:asc or desc
	 * 
	 */
	public String sortOrder="asc";
	public Boolean checkModelForReq(){
		if(pageNumber==null||pageSize==null)return false;
		else return true;
	}
	/**
	 * 判断是否有单个搜索条件
	 * @return
	 */
	public Boolean isHaveSerach(){
		//string 非空验证可替换
		if(null!=serach)return true;
		return false;
	}
	/**
	 * 判断是否有多搜索条件
	 * @return
	 */
	public Boolean isHaveSerachList(){
		if(serachList!=null&&serachList.length>0)return true;
		return false;
	}
	public List<Object> getInfoList() {
		return infoList;
	}

	public void setInfoList(List<Object> infoList) {
		this.infoList = infoList;
	}

	public Integer getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}

	public Integer getPageSize() {
		return pageSize==null?0:pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public String getSerach() {
		return serach;
	}

	public void setSerach(String serach) {
		this.serach = serach;
	}

	public String[] getSerachList() {
		return serachList;
	}

	public void setSerachList(String[] serachList) {
		if(serachList==null)return;
		for(int i=serachList.length-1;i>=0;i--){
			if(serachList[i].equals("")){
				serachList[i]=null;
			}
		}
		this.serachList = serachList;
	}

	public String getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	public Integer getTotal() {
		return total==null?0:total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}
	public void setReturnList(List<Object> list){
		setInfoList(list);
	}
	
}
