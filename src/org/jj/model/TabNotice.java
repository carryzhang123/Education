package org.jj.model;

/**
 * TabNotice entity. @author MyEclipse Persistence Tools
 */

public class TabNotice implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 6422520542534533743L;
	private Integer id;
	private Integer publicUser;
	private String title;
	private String info;
	private String publishTime;
	
	private TabUserInfo user;
	
	
	// Constructors

	public TabUserInfo getUser() {
		return user;
	}


	public TabNotice setUser(TabUserInfo user) {
		this.user = user;
		return this;
	}


	/** default constructor */
	public TabNotice() {
	}


	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	


	public Integer getPublicUser() {
		return publicUser;
	}


	public void setPublicUser(Integer publicUser) {
		this.publicUser = publicUser;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

}