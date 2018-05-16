package org.jj.action;

import org.jj.services.ClientNoticeServices;
import org.jj.utils.BaseAction;

public class ClientIndexAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2013088933902795881L;
	
	 ClientNoticeServices noticeServices;

	public ClientNoticeServices getNoticeServices() {
		return noticeServices;
	}

	public void setNoticeServices(ClientNoticeServices noticeServices) {
		this.noticeServices = noticeServices;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String index(){
		//加载公告
		request.setAttribute("notices", noticeServices.findAll());
		return SUCCESS;
	}

	public void city(){
	}

	
}
