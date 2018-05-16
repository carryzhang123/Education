package org.jj.action;

import org.jj.services.UserInfoServices;
import org.jj.utils.BaseAction;

public class ClientManagerAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1261890483710730375L;

	UserInfoServices userInfoServices;

	
	
	
	public UserInfoServices getUserInfoServices() {
		return userInfoServices;
	}

	public void setUserInfoServices(UserInfoServices userInfoServices) {
		this.userInfoServices = userInfoServices;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String index() {
		return SUCCESS;
	}

	public String user() {
		return SUCCESS;
	}

	
	public String comment() {
		return SUCCESS;
	}

	public String course() {
		return SUCCESS;
	}

	public String notice() {
		return SUCCESS;
	}

}
