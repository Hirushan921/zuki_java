package com.azoza.web.zuki;

import com.azoza.web.zuki.entity.AppSetting;
import com.azoza.web.zuki.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();
//        String encrypt = Encryption.encrypt("1234");
//        System.out.println(encrypt);

//        System.out.println(Env.get("mail.host"));

//        AppSetting setting = new AppSetting();
//        setting.setName("app_description");
//        setting.setValue("Night Restaurant");
//        Transaction transaction = session.beginTransaction();
//        session.persist(setting);
//        transaction.commit();
    }
}