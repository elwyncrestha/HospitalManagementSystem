/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.Patient;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface PatientService {
    
    void addPatient(Patient patient);
    
    List<Patient> displayPatients();
    
    Patient getPatientById(int id);
    
    void updatePatient(Patient patient);
    
    void deletePatient(int id);
    
    long countPatients();
    
}
