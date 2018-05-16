package org.jj.action;

import org.jj.services.ClientCommentSerivces;
import org.jj.utils.BaseAction;

import com.alibaba.fastjson.JSONObject;

public class ClientCommentAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5597450412780175493L;
	
	ClientCommentSerivces commentSerivces;

	public ClientCommentSerivces getCommentSerivces() {
		return commentSerivces;
	}

	public void setCommentSerivces(ClientCommentSerivces commentSerivces) {
		this.commentSerivces = commentSerivces;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public void comment_list(){
		responseInfo(JSONObject.toJSONString(commentSerivces.list()));
	}
}
