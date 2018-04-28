/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.DoctorDao;
import com.elvin.modal.Doctor;
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
public class DoctorDaoImpl implements DoctorDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(Doctor doctor) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(doctor);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Doctor> getAllDoc() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Doctor> list = session.createCriteria(Doctor.class).list();
        session.close();
        return list;
    }   

    @Override
    public List<Doctor> getDocById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Doctor> list = session.createCriteria(Doctor.class).add(Restrictions.eq("doctorId",id)).list();
        session.close();
        return list;
    }

    @Override
    public void update(Doctor doctor) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(doctor);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Doctor doctor) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(doctor);
        session.getTransaction().commit();
        session.close();
    }
    
}
