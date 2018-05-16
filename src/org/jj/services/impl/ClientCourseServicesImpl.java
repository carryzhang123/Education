package org.jj.services.impl;

import java.util.List;

import org.jj.dao.TabCourseDAO;
import org.jj.model.TabCourse;
import org.jj.services.ClientCourseServices;

public class ClientCourseServicesImpl implements ClientCourseServices {
	
	TabCourseDAO courseDAO;
	
	public TabCourseDAO getCourseDAO() {
		return courseDAO;
	}

	public void setCourseDAO(TabCourseDAO courseDAO) {
		this.courseDAO = courseDAO;
	}

	@SuppressWarnings("unchecked")
	public List<TabCourse> list() {
		return courseDAO.findAll();
	}

}