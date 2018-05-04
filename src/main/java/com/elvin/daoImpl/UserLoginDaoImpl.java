/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.UserLoginDao;
import com.elvin.modal.UserLogin;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
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

    @Override
    public boolean validate(String username, String email) {
        boolean status = false;
                
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(UserLogin.class);
        Criterion usernameRestr = Restrictions.eq("username", username);
        Criterion emailRestr = Restrictions.eq("email",email);
        List<UserLogin> list = criteria.add(Restrictions.and(usernameRestr,emailRestr)).list();
        
        if(list.size() > 0){
            status = true;
        }
        
        return status;
    }

    @Override
    public UserLogin getBy_UsernameEmail(String username, String email) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(UserLogin.class);
        Criterion usernameRestr = Restrictions.eq("username",username);
        Criterion emailRestr = Restrictions.eq("email",email);
        List<UserLogin> list = criteria.add(Restrictions.and(usernameRestr,emailRestr)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public void update(UserLogin userLogin) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(userLogin);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public UserLogin getBy_EmailAndPassword(String email, String password) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(UserLogin.class);
        Criterion emailRestr = Restrictions.eq("email",email);
        Criterion passwordRestr = Restrictions.eq("password",password);
        List<UserLogin> list = criteria.add(Restrictions.and(passwordRestr,emailRestr)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public boolean validateByEmailAndPassword(String email, String password) {
        boolean status = false;
                
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(UserLogin.class);
        Criterion passwordRestr = Restrictions.eq("password", password);
        Criterion emailRestr = Restrictions.eq("email",email);
        List<UserLogin> list = criteria.add(Restrictions.and(passwordRestr,emailRestr)).list();
        
        if(list.size() > 0){
            status = true;
        }
        
        return status;
    }
    
}
