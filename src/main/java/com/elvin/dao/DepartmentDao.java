/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.Department;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface DepartmentDao {
    
    void insert(Department department);
    
    List<Department> display();
    
    void update(Department department);
    
    Department getById(int id);
    
    void delete(Department department);
    
    long count();
    
}
