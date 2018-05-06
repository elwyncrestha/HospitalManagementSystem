/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.ContactMeDao;
import com.elvin.modal.ContactMe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author elwyn
 */
@Repository
public class ContactMeDaoImpl implements ContactMeDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(ContactMe contactMe) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(contactMe);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(ContactMe contactMe) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(contactMe);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public long count() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        long totalContacts = (long) session.createCriteria(ContactMe.class).setProjection(Projections.rowCount()).uniqueResult();
        session.close();
        return totalContacts;
    }
    
}
