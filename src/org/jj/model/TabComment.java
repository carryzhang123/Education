package org.jj.model;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author ZhangHang
 * @create 2018-12-26 10:55
 **/
@Entity
@Table(name = "tab_comment", schema = "education", catalog = "")
public class TabComment {
    private int id;
    private String comment;
    private String publishTime;
    private int publishUser;
    private Integer replyUser;
    private int isDel;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "comment")
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
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

    @Basic
    @Column(name = "reply_user")
    public Integer getReplyUser() {
        return replyUser;
    }

    public void setReplyUser(Integer replyUser) {
        this.replyUser = replyUser;
    }

    @Basic
    @Column(name = "is_del")
    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TabComment that = (TabComment) o;
        return id == that.id &&
                publishUser == that.publishUser &&
                isDel == that.isDel &&
                Objects.equals(comment, that.comment) &&
                Objects.equals(publishTime, that.publishTime) &&
                Objects.equals(replyUser, that.replyUser);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, comment, publishTime, publishUser, replyUser, isDel);
    }
}
