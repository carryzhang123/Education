package org.jj.model;

/**
 * TabComment entity. @author MyEclipse Persistence Tools
 */

public class TabComment implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -7337746868438157534L;
	private Integer id;
	private TabUserInfo tabUserInfoByReplyUser;
	private TabUserInfo tabUserInfoByPublishUser;
	private String comment;
	private String publishTime;
	private Integer isDel;

	// Constructors

	/** default constructor */
	public TabComment() {
	}

	/** minimal constructor */
	public TabComment(TabUserInfo tabUserInfoByPublishUser, String comment, String publishTime, Integer isDel) {
		this.tabUserInfoByPublishUser = tabUserInfoByPublishUser;
		this.comment = comment;
		this.publishTime = publishTime;
		this.isDel = isDel;
	}

	/** full constructor */
	public TabComment(TabUserInfo tabUserInfoByReplyUser, TabUserInfo tabUserInfoByPublishUser, String comment,
			String publishTime, Integer isDel) {
		this.tabUserInfoByReplyUser = tabUserInfoByReplyUser;
		this.tabUserInfoByPublishUser = tabUserInfoByPublishUser;
		this.comment = comment;
		this.publishTime = publishTime;
		this.isDel = isDel;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TabUserInfo getTabUserInfoByReplyUser() {
		return this.tabUserInfoByReplyUser;
	}

	public void setTabUserInfoByReplyUser(TabUserInfo tabUserInfoByReplyUser) {
		this.tabUserInfoByReplyUser = tabUserInfoByReplyUser;
	}

	public TabUserInfo getTabUserInfoByPublishUser() {
		return this.tabUserInfoByPublishUser;
	}

	public void setTabUserInfoByPublishUser(TabUserInfo tabUserInfoByPublishUser) {
		this.tabUserInfoByPublishUser = tabUserInfoByPublishUser;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	public Integer getIsDel() {
		return this.isDel;
	}

	public void setIsDel(Integer isDel) {
		this.isDel = isDel;
	}

}