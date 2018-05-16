package org.jj.services.impl;

import java.util.List;

import org.jj.dao.TabNoticeDAO;
import org.jj.dao.TabUserInfoDAO;
import org.jj.model.TabNotice;
import org.jj.services.ClientNoticeServices;

public class ClientNoticeServicesImpl implements ClientNoticeServices{

	TabNoticeDAO noticeDAO;
	
	TabUserInfoDAO userInfoDAO;
	
	
	
	public TabUserInfoDAO getUserInfoDAO() {
		return userInfoDAO;
	}



	public void setUserInfoDAO(TabUserInfoDAO userInfoDAO) {
		this.userInfoDAO = userInfoDAO;
	}



	public TabNoticeDAO getNoticeDAO() {
		return noticeDAO;
	}



	public void setNoticeDAO(TabNoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}



	public TabNotice show(Integer id) {
		TabNotice tn=noticeDAO.findById(id);
		tn.setUser(userInfoDAO.findById(tn.getPublicUser()));
		return tn;
	}



	@Override
	public Integer del(Integer id) {
		try{
			noticeDAO.delete(id);
			return 1;
		}catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}



	@Override
	public void save(TabNotice tn) {
		noticeDAO.save(tn);
	}



	@SuppressWarnings("unchecked")
	@Override
	public List<TabNotice> findAll() {
		return noticeDAO.findAll();
	}



	@Override
	public List<TabNotice> findTitleList() {
		return noticeDAO.findTitleList();
	}

}
