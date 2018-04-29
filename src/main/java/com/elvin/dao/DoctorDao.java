/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.Doctor;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface DoctorDao {
    
    void insert(Doctor doctor);
    
    List<Doctor> getAllDoc();
    
    List<Doctor> getDocById(int id);
    
    void update(Doctor doctor);
    
    void delete(Doctor doctor);
    
    long getTotalDoctor();
    
}
