package com.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by root on 20/7/17.
 */

@Entity
public class Subscription {

    @Id@GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @ManyToOne
            @JoinColumn(name = "subscription_join_topic")
    Topic topic;

    @ManyToOne
    @JoinColumn(name = "subscription_join_user")
    User user;

    public enum Seriousness{
        Casual,
        Serious,
        VerySerious;
    }


    Seriousness seriousness;

    Date dateCreated;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Seriousness getSeriousness() {
        return seriousness;
    }

    public void setSeriousness(Seriousness seriousness) {
        this.seriousness = seriousness;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    @Override
    public String toString() {
        return "Subscription{" +
                "id=" + id +
                ", topic=" + topic +
                ", user=" + user +
                ", seriousness=" + seriousness +
                ", dateCreated=" + dateCreated +
                '}';
    }
}
