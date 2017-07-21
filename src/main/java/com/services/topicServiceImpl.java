package com.services;

import com.dao.topicDaoImpl;
import com.model.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * Created by root on 19/7/17.
 */
@Component
public class topicServiceImpl {

    @Autowired
    private topicDaoImpl topicdaoimpl;

    public boolean addtopic(Topic topic)
    {
        boolean check;

        try {

            check = topicdaoimpl.addTopicDao(topic);
            return check;
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return false;
    }

    public List getTopiclist(String username)
    {
        List list;

        list = topicdaoimpl.getTopicWhereUsername(username);
        return list;
    }

    public Long getTopicCount(String username)
    {
        return topicdaoimpl.getTopicCount(username);
    }

}
