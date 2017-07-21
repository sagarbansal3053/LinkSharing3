package com.services;

import com.model.LinkResource;
import com.model.Topic;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dao.resourceDaoImpl;
import java.util.Date;

/**
 * Created by root on 21/7/17.
 */

@Component
public class resourceServiceImpl {

    @Autowired
    resourceDaoImpl resourceDao;

    public boolean addLinkResource(User user, Topic topic, String url, String description)
    {
        boolean check;
        try {
            LinkResource linkResource = new LinkResource();
            linkResource.setUrl(url);
            linkResource.setDescription(description);
            linkResource.setCreatedBy(user);
            linkResource.setTopic(topic);
            linkResource.setDateCreated(new Date());
            linkResource.setLastUpdate(new Date());

            check = resourceDao.addLinkResourceDao(linkResource);
            if (check == true)
            {
                System.out.println("link resource added");
                return true;
            }
            else
            {
                System.out.println("link resource not added");
                return false;
            }
        }
        catch (Exception e)
        {
            System.out.println("prob in addlinkresource " + e);
        }

        return false;
    }
}
