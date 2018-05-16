package org.jj.model;

/**
 * TabCourse entity. @author MyEclipse Persistence Tools
 */

public class TabCourse implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -8502267323476857413L;
	private Integer id;
	private TabUserInfo tabUserInfo;
	private String course;
	private String addTime;

	// Constructors

	/** default constructor */
	public TabCourse() {
	}

	/** full constructor */
	public TabCourse(TabUserInfo tabUserInfo, String course, String addTime) {
		this.tabUserInfo = tabUserInfo;
		this.course = course;
		this.addTime = addTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TabUserInfo getTabUserInfo() {
		return this.tabUserInfo;
	}

	public void setTabUserInfo(TabUserInfo tabUserInfo) {
		this.tabUserInfo = tabUserInfo;
	}

	public String getCourse() {
		return this.course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

}