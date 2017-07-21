package com.services;

import com.dao.subscriptionDaoImpl;
import com.model.Subscription;
import com.model.Topic;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by root on 20/7/17.
 */
@Component
public class subscriptionServiceImpl {

    @Autowired
    private subscriptionDaoImpl subscriptionDao;

    public boolean addSubscriber(User user, Topic topic, String seriousness)
    {
        boolean check;

        try {
            Subscription subscription = new Subscription();
            subscription.setDateCreated(new Date());
            subscription.setTopic(topic);
            subscription.setUser(user);
            subscription.setSeriousness(Subscription.Seriousness.valueOf(seriousness));

            check = subscriptionDao.addSubscriberDao(subscription);
            return check;
        }
        catch (Exception e)
        {
            System.out.println("problem in addsubscriber " + e);
        }
        return false;


    }

    public Long getSubscriptionCount(String username)
    {
        return subscriptionDao.getSubscriptionCount(username);
    }
}
