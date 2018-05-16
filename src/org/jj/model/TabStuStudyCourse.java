package org.jj.model;

/**
 * TabStuStudyCourse entity. @author MyEclipse Persistence Tools
 */

public class TabStuStudyCourse implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8568947102117715558L;
	private Integer id;
	private TabUserInfo tabUserInfoByTeachUserId;
	private TabUserInfo tabUserInfoByStudentUserId;
	private Integer courseId;
	private String note;
	private String publishTime;

	// Constructors

	/** default constructor */
	public TabStuStudyCourse() {
	}

	/** minimal constructor */
	public TabStuStudyCourse(TabUserInfo tabUserInfoByStudentUserId, Integer courseId) {
		this.tabUserInfoByStudentUserId = tabUserInfoByStudentUserId;
		this.courseId = courseId;
	}

	/** full constructor */
	public TabStuStudyCourse(TabUserInfo tabUserInfoByTeachUserId, TabUserInfo tabUserInfoByStudentUserId,
			Integer courseId, String note, String publishTime) {
		this.tabUserInfoByTeachUserId = tabUserInfoByTeachUserId;
		this.tabUserInfoByStudentUserId = tabUserInfoByStudentUserId;
		this.courseId = courseId;
		this.note = note;
		this.publishTime = publishTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TabUserInfo getTabUserInfoByTeachUserId() {
		return this.tabUserInfoByTeachUserId;
	}

	public void setTabUserInfoByTeachUserId(TabUserInfo tabUserInfoByTeachUserId) {
		this.tabUserInfoByTeachUserId = tabUserInfoByTeachUserId;
	}

	public TabUserInfo getTabUserInfoByStudentUserId() {
		return this.tabUserInfoByStudentUserId;
	}

	public void setTabUserInfoByStudentUserId(TabUserInfo tabUserInfoByStudentUserId) {
		this.tabUserInfoByStudentUserId = tabUserInfoByStudentUserId;
	}

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

}