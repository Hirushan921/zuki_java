package com.azoza.web.zuki.service;

import com.azoza.web.zuki.entity.Admin;
import com.azoza.web.zuki.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.Optional;

public class AdminService {


    public Optional<Admin> getByEmail(String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            return session.createQuery("select u from Admin u where u.email=:email",Admin.class)
                    .setParameter("email",email)
                    .uniqueResultOptional();
        }catch(NoResultException e){
            return Optional.empty();
        }finally {
            session.close();
        }

    }

    public void saveAdmin(Admin admin){

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(admin);
        transaction.commit();
        session.close();
    }

    public void updateAdmin(Admin admin){

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(admin);
        transaction.commit();
        session.close();
    }
}
