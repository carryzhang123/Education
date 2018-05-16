package org.jj.services;

import java.util.List;

import org.jj.model.TabNotice;

public interface ClientNoticeServices {

	TabNotice show(Integer id);

	Integer del(Integer id);

	void save(TabNotice tn);

	List<TabNotice> findAll();

	List<TabNotice> findTitleList();

}
