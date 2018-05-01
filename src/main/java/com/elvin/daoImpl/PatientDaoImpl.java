/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.PatientDao;
import com.elvin.modal.Patient;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author elwyn
 */
@Repository
public class PatientDaoImpl implements PatientDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(Patient patient) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(patient);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Patient> getAll() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Patient> list = session.createCriteria(Patient.class).list();
        session.close();
        return list;
    }

    @Override
    public Patient getById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Patient> list = session.createCriteria(Patient.class).add(Restrictions.eq("patientId",id)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public void update(Patient patient) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(patient);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Patient patient) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(patient);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public long count() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        long totalPatient = (long) session.createCriteria(Patient.class).setProjection(Projections.rowCount()).uniqueResult();
        session.close();
        return totalPatient;
    }
    
}
