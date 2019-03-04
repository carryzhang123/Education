package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_notice", schema = "education", catalog = "")
public class TabNotice {
    private int id;
    private String title;
    private String info;
    private String publishTime;
    private int publishUser;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "info")
    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
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
    @Column(name = "publish_user")
    public int getPublishUser() {
        return publishUser;
    }

    public void setPublishUser(int publishUser) {
        this.publishUser = publishUser;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        TabNotice that = (TabNotice) o;
        return id == that.id &&
                publishUser == that.publishUser &&
                Objects.equals(title, that.title) &&
                Objects.equals(info, that.info) &&
                Objects.equals(publishTime, that.publishTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, title, info, publishTime, publishUser);
    }
}
