/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.modal.HService;
import java.util.List;
import com.elvin.dao.HServiceDao;
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
public class HServiceDaoImpl implements HServiceDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void addService(HService hService) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(hService);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<HService> displayServices() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<HService> list = session.createCriteria(HService.class).list();
        session.close();
        return list;
    }

    @Override
    public void updateService(HService hService) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(hService);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public HService getServiceById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<HService> list = session.createCriteria(HService.class).add(Restrictions.eq("serviceId", id)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public void deleteService(HService hService) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(hService);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public long countServices() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        long totalServices = (long) session.createCriteria(HService.class).setProjection(Projections.rowCount()).uniqueResult();
        session.close();
        return totalServices;
    }
    
}
