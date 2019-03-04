package org.jj.services.impl;

import org.jj.dao.TabCourseDAO;
import org.jj.services.ClientCourseServices;

public class ClientCourseServicesImpl implements ClientCourseServices {
	
	TabCourseDAO courseDAO;
	
	public TabCourseDAO getCourseDAO() {
		return courseDAO;
	}

	public void setCourseDAO(TabCourseDAO courseDAO) {
		this.courseDAO = courseDAO;
	}

	@Override
	public String list() {
		return courseDAO.findAllToJson();
	}

}
