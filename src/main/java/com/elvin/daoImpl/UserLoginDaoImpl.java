/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.UserLoginDao;
import com.elvin.modal.UserLogin;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author elwyn
 */
@Repository
public class UserLoginDaoImpl implements UserLoginDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(UserLogin userLogin) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(userLogin);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public UserLogin getById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<UserLogin> list = session.createCriteria(UserLogin.class).add(Restrictions.eq("id", id)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public List<UserLogin> getAll() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<UserLogin> list = session.createCriteria(UserLogin.class).list();
        session.close();
        return list;
    }

    @Override
    public void delete(UserLogin userLogin) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(userLogin);
        session.getTransaction().commit();
        session.close();
    }
    
}
