package com.services;

import com.dao.UserDao;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;

/**
 * Created by root on 14/7/17.
 */

@Component
public class UserServiceImpl implements UserService {

    @Autowired
     private UserDao userDao;


    private void setUserDao(UserDao userDao)
    {
        this.userDao = userDao;
    }

    public boolean addUser(User u) {
            boolean check;
        try {
            u.setActive(true);
            u.setAdmin(false);
            u.setDateCreated(new Date());
            u.setLastUpdated(new Date());

             check = userDao.addUserDao(u);
            return check;
        }
        catch(Exception e)
        {
            System.out.println("prob in userserviceimpl" + e);
        }

        return false;
    }



    @Override
    public void userImageUpload(MultipartFile[] fileupload, User user) throws IOException {

        if (fileupload != null && fileupload.length > 0) {
            for (MultipartFile afile : fileupload) {
                System.out.println("image upload");
                user.setPic(afile.getBytes());
            }
        } else {

            System.out.println("image not upload");
        }
    }

    @Override
    public boolean userLogin(String username, String password) {
        System.out.println("in service");
        boolean value;
        value = userDao.readUsernamePassword(username,password);
        System.out.println(value);
        return value;
    }

    public User getUserDetails(String username) {
        User user = null;
        try {
            user = null;
            user = userDao.getUserObjectDao(username);

        } catch (Exception e) {
            System.out.println("problem in getuserdetails " + e);
        }
        return user;
    }
}
