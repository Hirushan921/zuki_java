package com.azoza.web.zuki.service;

import com.azoza.web.zuki.entity.Category;
import com.azoza.web.zuki.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CategoryService {
    public Category getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Category.class,id);
    }

    public List<Category> getAll(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM Category  c", Category.class).getResultList();
    }

    public List<Category> getAll(boolean active){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM Category  c WHERE c.active=:active", Category.class)
                .setParameter("active",active)
                .getResultList();
    }

    public void save(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(category);
        transaction.commit();
        session.close();
    }

    public void update(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(category);
        transaction.commit();
        session.close();
    }

    public void delete(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.remove(category);
        transaction.commit();
        session.close();
    }

    public void delete(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Category category = session.get(Category.class, id);
        Transaction transaction = session.beginTransaction();
        session.remove(category);
        transaction.commit();
        session.close();
    }
}
