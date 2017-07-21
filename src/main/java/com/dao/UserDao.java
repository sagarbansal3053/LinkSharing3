package com.dao;

import com.model.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by root on 14/7/17.
 */

public interface UserDao {

    public boolean addUserDao(User user);
    public boolean readUsernamePassword(String username,String password);
    public User getUserObjectDao (String username);
}
