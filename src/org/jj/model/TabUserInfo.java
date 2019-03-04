package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_user_info", schema = "education", catalog = "")
public class TabUserInfo {
    private int id;
    private String userId;
    private String userPassword;
    private String userName;
    private String userSex;
    private String userAge;
    private Integer userRole;
    private String userResumeFile;
    private Integer userIsExamine;
    private Integer userResumeIsShow;
    private String loginResult;
    private Boolean loginState;
    private String role;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_id")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "user_password")
    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Basic
    @Column(name = "user_name")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "user_sex")
    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    @Basic
    @Column(name = "user_age")
    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }

    @Basic
    @Column(name = "user_role")
    public int getUserRole() {
        return userRole;
    }

    public void setUserRole(int userRole) {
        this.userRole = userRole;
    }

    @Basic
    @Column(name = "user_resume_file")
    public String getUserResumeFile() {
        return userResumeFile;
    }

    public void setUserResumeFile(String userResumeFile) {
        this.userResumeFile = userResumeFile;
    }

    @Basic
    @Column(name = "user_is_examine")
    public Integer getUserIsExamine() {
        return userIsExamine;
    }

    public void setUserIsExamine(Integer userIsExamine) {
        this.userIsExamine = userIsExamine;
    }

    @Basic
    @Column(name = "user_resume_is_show")
    public Integer getUserResumeIsShow() {
        return userResumeIsShow;
    }

    public void setUserResumeIsShow(Integer userResumeIsShow) {
        this.userResumeIsShow = userResumeIsShow;
    }

    public String getLoginResult() {
        return loginResult;
    }

    public void setLoginResult(String loginResult) {
        this.loginResult = loginResult;
    }

    public Boolean getLoginState() {
        return loginState;
    }

    public void setLoginState(Boolean loginState) {
        this.loginState = loginState;
    }

    public void setUserRole(Integer userRole) {
        this.userRole = userRole;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        TabUserInfo that = (TabUserInfo) o;
        return id == that.id &&
                userRole == that.userRole &&
                Objects.equals(userId, that.userId) &&
                Objects.equals(userPassword, that.userPassword) &&
                Objects.equals(userName, that.userName) &&
                Objects.equals(userSex, that.userSex) &&
                Objects.equals(userAge, that.userAge) &&
                Objects.equals(userResumeFile, that.userResumeFile) &&
                Objects.equals(userIsExamine, that.userIsExamine) &&
                Objects.equals(userResumeIsShow, that.userResumeIsShow);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userId, userPassword, userName, userSex, userAge, userRole, userResumeFile, userIsExamine, userResumeIsShow);
    }
}
