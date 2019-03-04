package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_teach_course", schema = "education", catalog = "")
public class TabTeachCourse {
    private int id;
    private Integer courseId;
    private Integer teacher;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "course_id")
    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    @Basic
    @Column(name = "teacher")
    public Integer getTeacher() {
        return teacher;
    }

    public void setTeacher(Integer teacher) {
        this.teacher = teacher;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TabTeachCourse that = (TabTeachCourse) o;
        return id == that.id &&
                Objects.equals(courseId, that.courseId) &&
                Objects.equals(teacher, that.teacher);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, courseId, teacher);
    }
}
