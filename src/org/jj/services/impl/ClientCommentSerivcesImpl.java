package org.jj.services.impl;

import java.util.List;

import org.jj.dao.TabCommentDAO;
import org.jj.model.TabComment;
import org.jj.services.ClientCommentSerivces;

public class ClientCommentSerivcesImpl implements ClientCommentSerivces {

	TabCommentDAO commentDAO;
	
	
	public TabCommentDAO getCommentDAO() {
		return commentDAO;
	}


	public void setCommentDAO(TabCommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}


	@Override
	@SuppressWarnings("unchecked")
	public List<TabComment> list() {
		return commentDAO.findAll();
	}

}
