package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by root on 21/7/17.
 */

@Entity
public class LinkResource extends Resource{


    String url;


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "LinkResource{" +
                "description='" + description + '\'' +
                ", createdBy=" + createdBy +
                ", topic=" + topic +
                ", dateCreated=" + dateCreated +
                ", lastUpdate=" + lastUpdate +

                ", url='" + url + '\'' +
                '}';
    }
}
