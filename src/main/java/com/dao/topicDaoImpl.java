package com.dao;

import com.model.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Iterator;
import java.util.List;

/**
 * Created by root on 19/7/17.
 */

@Component
public class topicDaoImpl {

    @Autowired(required = true)
    SessionFactory sessionFactory;

    public boolean addTopicDao(Topic topic) {

//         sessionFactory = new Configuration().configure().buildSessionFactory();
        try {
            Session session1 = sessionFactory.openSession();
            session1.beginTransaction();
            session1.save(topic);
            session1.getTransaction().commit();
            session1.close();
            return true;
        }catch (Exception e)
        {
            System.out.println("problem in adduserdao" + e);
        }
        return false;

    }

    public List getTopicWhereUsername(String username) {
       /* System.out.println("int dao");
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List<User> user = session.createQuery("select from User").getResultList();
        session.getTransaction().commit();
        session.close();

        Iterator<User> itr = user.iterator();
        while (itr.hasNext())
        {

            System.out.println(itr.next());
        }
        return user;*/

        List l = null;
        try {
            System.out.println("in topic dao");

            Session session = sessionFactory.openSession();
            Query query = session.createQuery("select t from Topic as t inner join Subscription as s on t.id = s.id " +
                                                 " inner join User as u on u.id = s.id where u.username = :user");
            query.setParameter("user", username);

            l = query.list();
            System.out.println(l.size());
            Iterator it = l.iterator();

            while (it.hasNext()) {
                Object o = (Object) it.next();
                Topic topic = (Topic) o;
                System.out.println("topicname: " + topic.getTopicname());
                System.out.println("---------------------------");

            }
        } catch (Exception e) {
            System.out.println("prob in gettopicwhereusername " + e);
        }
        return l;
    }

    public Long getTopicCount(String username)
    {
        Long count;
        Session session = sessionFactory.openSession();



        Query query = session.createQuery("select count(*) from Topic as t left join User as u on t.id = u.id where u.username = :user");
        query.setParameter("user", username);

        count = Long.valueOf(( (Long) query.iterate().next() ).intValue());

        System.out.println(count);
        return count;

    }
}
