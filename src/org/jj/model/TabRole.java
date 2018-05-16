package org.jj.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TabRole entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("rawtypes")
public class TabRole implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -3955615629696832337L;
	private Integer id;
	private String role;
	private Set tabUserInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public TabRole() {
	}

	/** full constructor */
	public TabRole(String role, Set tabUserInfos) {
		this.role = role;
		this.tabUserInfos = tabUserInfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set getTabUserInfos() {
		return this.tabUserInfos;
	}

	public void setTabUserInfos(Set tabUserInfos) {
		this.tabUserInfos = tabUserInfos;
	}

}