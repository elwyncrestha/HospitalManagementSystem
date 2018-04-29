/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.Department;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface DepartmentService {
    
    void addDepartment(Department department);
    
    List<Department> displayDepartments();
    
    Department getDepartmentById(int id);
    
    void updateDepartment(Department department);
    
    void deleteDepartment(int id);
    
    long countDepartments();
    
}
