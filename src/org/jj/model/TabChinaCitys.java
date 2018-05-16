package org.jj.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TabChinaCitys entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("rawtypes")
public class TabChinaCitys implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4697993303350472287L;
	private Integer id;
	private String name;
	private Integer pid;
	private Set tabUserInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public TabChinaCitys() {
	}

	/** minimal constructor */
	public TabChinaCitys(Integer pid) {
		this.pid = pid;
	}

	/** full constructor */
	public TabChinaCitys(String name, Integer pid, Set tabUserInfos) {
		this.name = name;
		this.pid = pid;
		this.tabUserInfos = tabUserInfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Set getTabUserInfos() {
		return this.tabUserInfos;
	}

	public void setTabUserInfos(Set tabUserInfos) {
		this.tabUserInfos = tabUserInfos;
	}

}