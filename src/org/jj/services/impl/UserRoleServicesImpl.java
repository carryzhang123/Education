package org.jj.services.impl;

import java.util.List;

import org.jj.dao.TabRoleDAO;
import org.jj.model.TabRole;
import org.jj.services.UserRoleServices;

public class UserRoleServicesImpl implements UserRoleServices{

	private TabRoleDAO roleDAO;
	
	
	public TabRoleDAO getRoleDAO() {
		return roleDAO;
	}


	public void setRoleDAO(TabRoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<TabRole> list() {
		return roleDAO.findAll();
	}
	
	
}
