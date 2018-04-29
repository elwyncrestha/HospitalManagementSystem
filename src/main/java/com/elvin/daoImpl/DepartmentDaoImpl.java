/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.daoImpl;

import com.elvin.dao.DepartmentDao;
import com.elvin.modal.Department;
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
public class DepartmentDaoImpl implements DepartmentDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public void insert(Department department) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(department);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Department> display() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Department> list = session.createCriteria(Department.class).list();
        session.close();
        return list;
    }

    @Override
    public void update(Department department) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(department);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Department getById(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        List<Department> list = session.createCriteria(Department.class).add(Restrictions.eq("departmentId",id)).list();
        session.close();
        return list.get(0);
    }

    @Override
    public void delete(Department department) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(department);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public long count() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        long totalDepartment = (long) session.createCriteria(Department.class).setProjection(Projections.rowCount()).uniqueResult();
        session.close();
        return totalDepartment;
    }
    
    
    
}
