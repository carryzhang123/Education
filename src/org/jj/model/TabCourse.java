package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_course", schema = "education", catalog = "")
public class TabCourse {
    private int id;
    private String course;
    private String addTime;
    private int addUser;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "course")
    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    @Basic
    @Column(name = "add_time")
    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    @Basic
    @Column(name = "add_user")
    public int getAddUser() {
        return addUser;
    }

    public void setAddUser(int addUser) {
        this.addUser = addUser;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TabCourse that = (TabCourse) o;
        return id == that.id &&
                addUser == that.addUser &&
                Objects.equals(course, that.course) &&
                Objects.equals(addTime, that.addTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, course, addTime, addUser);
    }
}
