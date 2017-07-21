package com.dao;

import com.model.Topic;
import com.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.*;

/**
 * Created by root on 14/7/17.
 */
@Component
public class UserDaoImpl implements UserDao {

    @Autowired(required = true)
    SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public boolean addUserDao(User user) {

//         sessionFactory = new Configuration().configure().buildSessionFactory();
            try {
                Session session1 = sessionFactory.openSession();
                session1.beginTransaction();

                session1.save(user);
                session1.getTransaction().commit();
                session1.close();
                return true;
            }catch (Exception e)
            {
                System.out.println("problem in adduserdao " + e);
            }
            return false;

    }

    public boolean readUsernamePassword(String username, String password)
    {
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
        System.out.println("in dao");

        Session session=sessionFactory.openSession();
        Query query  = session.createQuery("from User u where u.username = :user and u.password = :pass " +
                                                "or u.email = :user and u.password = :pass");
        query.setParameter("user",username);
        query.setParameter("pass",password);

//        List l = query.list();
//        System.out.println(l.size());
       /* Iterator it = l.iterator();

        while(it.hasNext())
        {
            Object o = (Object) it.next();
            Product p = (Product)o;
            System.out.println("Product Name : "+p.getProName());
            System.out.println("Product Price : "+p.getPrice());
            System.out.println("---------------------------");

        }*/

        if(query.list().isEmpty()){
            return false;
        }else
            return true;

        }

        public User getUserObjectDao (String username) {
            Session session = sessionFactory.openSession();
            Query query = session.createQuery("from User u where u.username = :user");
            query.setParameter("user", username);

            List l = query.list();
//        System.out.println(l.size());
            Iterator it = l.iterator();

            User u = null;
            while (it.hasNext()) {
                Object o = (Object) it.next();
                u = (User) o;
            }

            return u;

        }


    }
