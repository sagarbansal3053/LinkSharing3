package com.dao;

import com.model.LinkResource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by root on 21/7/17.
 */
@Component
public class resourceDaoImpl {

    @Autowired(required = true)
    SessionFactory sessionFactory;

    public  boolean addLinkResourceDao (LinkResource linkResource)
    {
        try {
            Session session1 = sessionFactory.openSession();
            session1.beginTransaction();

            session1.save(linkResource);
            session1.getTransaction().commit();
            session1.close();
            return true;
        }catch (Exception e)
        {
            System.out.println("problem in adduserdao " + e);
        }
        return false;


    }
}
