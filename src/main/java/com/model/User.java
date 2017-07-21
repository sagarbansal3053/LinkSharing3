package com.model;

import com.mysql.jdbc.Blob;
import com.sun.istack.internal.NotNull;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.IOUtils;
import sun.nio.ch.IOUtil;

import javax.persistence.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by root on 13/7/17.
 */

@Entity
public class User {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String fname;
    String lname;
    @Column(unique = true)
    String email;

    @Column(unique = true)
    String username;
    String password;
    @Lob
    byte[] pic;
    boolean admin;
    boolean active;
    Date dateCreated;
    Date lastUpdated;




    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {

        this.admin = admin;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {

        this.active = active;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {

        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {

        this.lastUpdated = lastUpdated;
    }



    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }




    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    @Override
    public String toString() {
        return "User{" +

                ", fname='" + fname + '\'' +
                ", lname='" + lname + '\'' +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", pic=" + Arrays.toString(pic) +
                ", admin=" + admin +
                ", active=" + active +
                ", dateCreated=" + dateCreated +
                ", lastUpdated=" + lastUpdated +
                '}';
    }

    public void setLname(String lname) {
        this.lname = lname;
    }
}
