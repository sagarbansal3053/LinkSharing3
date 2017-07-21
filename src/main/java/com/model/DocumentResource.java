package com.model;

import org.hibernate.annotations.GeneratorType;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by root on 21/7/17.
 */

@Entity
public class DocumentResource extends Resource{


    String filePath;



    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    @Override
    public String toString() {
        return "DocumentResource{" +
                "description='" + description + '\'' +
                ", createdBy=" + createdBy +
                ", topic=" + topic +
                ", dateCreated=" + dateCreated +
                ", lastUpdate=" + lastUpdate +

                ", filePath='" + filePath + '\'' +
                '}';
    }
}
