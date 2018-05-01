/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.Patient;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface PatientDao {
    
    void insert(Patient patient);
    
    List<Patient> getAll();
    
    Patient getById(int id);
    
    void update(Patient patient);
    
    void delete(Patient patient);
    
    long count();
    
}
