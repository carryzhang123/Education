package org.jj.services;

import org.jj.model.TabNotice;

import java.util.List;

public interface ClientNoticeServices {

	TabNotice show(Integer id);

	Integer del(Integer id);

	void save(TabNotice tn);

	List<TabNotice> findAll();

	List<TabNotice> findTitleList();

}
