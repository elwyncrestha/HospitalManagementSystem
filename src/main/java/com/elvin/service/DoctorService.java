/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.Doctor;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface DoctorService {
    
    void insertDoctor(Doctor doctor);
    
    List<Doctor> displayDoctor();
    
    Doctor getDocById(int id);
    
    void updateDoctor(Doctor doctor);
    
    void deleteDoctor(Doctor doctor);
    
    long countDoc();
    
}
