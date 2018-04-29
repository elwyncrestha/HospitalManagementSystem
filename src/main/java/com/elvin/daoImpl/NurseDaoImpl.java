/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.NurseDao;
import com.elvin.modal.Nurse;
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
public class NurseDaoImpl implements NurseDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(Nurse nurse) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(nurse);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Nurse> display() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Nurse> list = session.createCriteria(Nurse.class).list();
        session.close();
        return list;
    }

    @Override
    public Nurse getById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Nurse> list = session.createCriteria(Nurse.class).add(Restrictions.eq("nurseId", id)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public void update(Nurse nurse) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(nurse);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Nurse nurse) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(nurse);
        session.getTransaction().commit();
        session.close();
    }
    
}
