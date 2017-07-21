package com.model;


import javax.persistence.*;
import java.util.Date;

/**
 * Created by root on 19/7/17.
 */

@Entity
public class Topic {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String topicname;

    Date topicdateCreated;
    Date topiclastUpdated;
    @ManyToOne
            @JoinColumn(name = "User_join_column")
    User userobj;

    public enum Visibility{
        Public,
        Private;
    }


     Visibility visiblity;

    @Override
    public String toString() {
        return "Topic{" +
                "id=" + id +
                ", topicname='" + topicname + '\'' +
                ", topicdateCreated=" + topicdateCreated +
                ", topiclastUpdated=" + topiclastUpdated +
                ", userobj=" + userobj +
                ", visiblity=" + visiblity +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUserobj() {
        return userobj;
    }

    public void setUserobj(User userobj) {
        this.userobj = userobj;
    }
    public String getTopicname() {
        return topicname;
    }

    public void setTopicname(String topicname) {
        this.topicname = topicname;
    }

    public Date getTopicdateCreated() {
        return topicdateCreated;
    }

    public void setTopicdateCreated(Date topicdateCreated) {
        this.topicdateCreated = topicdateCreated;
    }

    public Date getTopiclastUpdated() {
        return topiclastUpdated;
    }

    public void setTopiclastUpdated(Date topiclastUpdated) {
        this.topiclastUpdated = topiclastUpdated;
    }

    public Visibility getVisiblity() {
        return visiblity;
    }

    public void setVisiblity(Visibility visiblity) {
        this.visiblity = visiblity;
    }
}


