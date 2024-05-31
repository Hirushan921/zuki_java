package com.azoza.web.zuki.service;

import com.azoza.web.zuki.entity.User;
import com.azoza.web.zuki.util.HibernateUtil;
import jakarta.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.Optional;

public class UserService {


    public Optional<User> getByEmail(String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            return session.createQuery("select u from User u where u.email=:email",User.class)
                    .setParameter("email",email)
                    .uniqueResultOptional();
        }catch(NoResultException e){
            return Optional.empty();
        }finally {
            session.close();
        }

    }

    public void saveUser(User user){

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }
}
