/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.DepartmentDao;
import com.elvin.modal.Department;
import com.elvin.service.DepartmentService;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author elwyn
 */
@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService{

    @Autowired
    DepartmentDao departmentDao;
    
    @Override
    public void addDepartment(Department department) {
        departmentDao.insert(department);
    }

    @Override
    public List<Department> displayDepartments() {
        return departmentDao.display();
    }

    @Override
    public Department getDepartmentById(int id) {
        return departmentDao.getById(id);
    }

    @Override
    public void updateDepartment(Department department) {
        departmentDao.update(department);
    }

    @Override
    public void deleteDepartment(int id) {
        Department department = departmentDao.getById(id);
        departmentDao.delete(department);
    }

    @Override
    public long countDepartments() {
        return departmentDao.count();
    }
    
}
