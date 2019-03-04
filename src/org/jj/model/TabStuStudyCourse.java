package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_stu_study_course", schema = "education", catalog = "")
public class TabStuStudyCourse {
    private int id;
    private int studentUserId;
    private int courseId;
    private String note;
    private String publishTime;
    private Integer teachUserId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "student_user_id")
    public int getStudentUserId() {
        return studentUserId;
    }

    public void setStudentUserId(int studentUserId) {
        this.studentUserId = studentUserId;
    }

    @Basic
    @Column(name = "course_id")
    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    @Basic
    @Column(name = "note")
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Basic
    @Column(name = "publish_time")
    public String getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(String publishTime) {
        this.publishTime = publishTime;
    }

    @Basic
    @Column(name = "teach_user_id")
    public Integer getTeachUserId() {
        return teachUserId;
    }

    public void setTeachUserId(Integer teachUserId) {
        this.teachUserId = teachUserId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TabStuStudyCourse that = (TabStuStudyCourse) o;
        return id == that.id &&
                studentUserId == that.studentUserId &&
                courseId == that.courseId &&
                Objects.equals(note, that.note) &&
                Objects.equals(publishTime, that.publishTime) &&
                Objects.equals(teachUserId, that.teachUserId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, studentUserId, courseId, note, publishTime, teachUserId);
    }
}
