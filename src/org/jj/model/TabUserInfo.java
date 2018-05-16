package org.jj.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TabUserInfo entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("rawtypes")
public class TabUserInfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -7419405802062774925L;
	private Integer id;
	private TabChinaCitys tabChinaCitys;
	private TabRole tabRole;
	private String userId;
	private String userPassword;
	private String userName;
	private String userSex;
	private String userAge;
	private String userAddress;
	private String userResumeFile;
	private Integer userIsExamine;
	private Integer userResumeIsShow;
	private Set tabCommentsForPublishUser = new HashSet(0);
	private Set tabCommentsForReplyUser = new HashSet(0);
	private Set tabStuStudyCoursesForStudentUserId = new HashSet(0);
	private Set tabNotices = new HashSet(0);
	private Set tabCourses = new HashSet(0);
	private Set tabStuStudyCoursesForTeachUserId = new HashSet(0);

	// Constructors

	/** default constructor */
	public TabUserInfo() {
	}

	/** minimal constructor */
	public TabUserInfo(TabRole tabRole, String userId, String userPassword) {
		this.tabRole = tabRole;
		this.userId = userId;
		this.userPassword = userPassword;
	}

	/** full constructor */
	public TabUserInfo(TabChinaCitys tabChinaCitys, TabRole tabRole, String userId, String userPassword,
			String userName, String userSex, String userAge, String userAddress, String userResumeFile,
			Integer userIsExamine, Integer userResumeIsShow, Set tabCommentsForPublishUser, Set tabCommentsForReplyUser,
			Set tabStuStudyCoursesForStudentUserId, Set tabNotices, Set tabCourses,
			Set tabStuStudyCoursesForTeachUserId) {
		this.tabChinaCitys = tabChinaCitys;
		this.tabRole = tabRole;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userSex = userSex;
		this.userAge = userAge;
		this.userAddress = userAddress;
		this.userResumeFile = userResumeFile;
		this.userIsExamine = userIsExamine;
		this.userResumeIsShow = userResumeIsShow;
		this.tabCommentsForPublishUser = tabCommentsForPublishUser;
		this.tabCommentsForReplyUser = tabCommentsForReplyUser;
		this.tabStuStudyCoursesForStudentUserId = tabStuStudyCoursesForStudentUserId;
		this.tabNotices = tabNotices;
		this.tabCourses = tabCourses;
		this.tabStuStudyCoursesForTeachUserId = tabStuStudyCoursesForTeachUserId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TabChinaCitys getTabChinaCitys() {
		return this.tabChinaCitys;
	}

	public void setTabChinaCitys(TabChinaCitys tabChinaCitys) {
		this.tabChinaCitys = tabChinaCitys;
	}

	public TabRole getTabRole() {
		return this.tabRole;
	}

	public void setTabRole(TabRole tabRole) {
		this.tabRole = tabRole;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return this.userName;
	}

	public TabUserInfo setUserName(String userName) {
		this.userName = userName;
		return this;
	}

	public String getUserSex() {
		return this.userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserAge() {
		return this.userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserResumeFile() {
		return this.userResumeFile;
	}

	public void setUserResumeFile(String userResumeFile) {
		this.userResumeFile = userResumeFile;
	}

	public Integer getUserIsExamine() {
		return this.userIsExamine;
	}

	public void setUserIsExamine(Integer userIsExamine) {
		this.userIsExamine = userIsExamine;
	}

	public Integer getUserResumeIsShow() {
		return this.userResumeIsShow;
	}

	public void setUserResumeIsShow(Integer userResumeIsShow) {
		this.userResumeIsShow = userResumeIsShow;
	}

	public Set getTabCommentsForPublishUser() {
		return this.tabCommentsForPublishUser;
	}

	public void setTabCommentsForPublishUser(Set tabCommentsForPublishUser) {
		this.tabCommentsForPublishUser = tabCommentsForPublishUser;
	}

	public Set getTabCommentsForReplyUser() {
		return this.tabCommentsForReplyUser;
	}

	public void setTabCommentsForReplyUser(Set tabCommentsForReplyUser) {
		this.tabCommentsForReplyUser = tabCommentsForReplyUser;
	}

	public Set getTabStuStudyCoursesForStudentUserId() {
		return this.tabStuStudyCoursesForStudentUserId;
	}

	public void setTabStuStudyCoursesForStudentUserId(Set tabStuStudyCoursesForStudentUserId) {
		this.tabStuStudyCoursesForStudentUserId = tabStuStudyCoursesForStudentUserId;
	}

	public Set getTabNotices() {
		return this.tabNotices;
	}

	public void setTabNotices(Set tabNotices) {
		this.tabNotices = tabNotices;
	}

	public Set getTabCourses() {
		return this.tabCourses;
	}

	public void setTabCourses(Set tabCourses) {
		this.tabCourses = tabCourses;
	}

	public Set getTabStuStudyCoursesForTeachUserId() {
		return this.tabStuStudyCoursesForTeachUserId;
	}

	public void setTabStuStudyCoursesForTeachUserId(Set tabStuStudyCoursesForTeachUserId) {
		this.tabStuStudyCoursesForTeachUserId = tabStuStudyCoursesForTeachUserId;
	}

	Boolean login_state=false;
	String login_result="";

	public Boolean isLogin() {
		return login_state;
	}

	public void setLogin_state(Boolean login_state) {
		this.login_state = login_state;
	}

	public String getLogin_result() {
		return login_result;
	}

	public void setLogin_result(String login_result) {
		this.login_result = login_result;
	}
	
}