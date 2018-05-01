/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.PatientDao;
import com.elvin.modal.Patient;
import com.elvin.service.PatientService;
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
public class PatientServiceImpl implements PatientService{

    @Autowired
    PatientDao patientDao;
    
    @Override
    public void addPatient(Patient patient) {
        patientDao.insert(patient);
    }

    @Override
    public List<Patient> displayPatients() {
        return patientDao.getAll();
    }

    @Override
    public Patient getPatientById(int id) {
        return patientDao.getById(id);
    }

    @Override
    public void updatePatient(Patient patient) {
        patientDao.update(patient);
    }

    @Override
    public void deletePatient(int id) {
        Patient patient = patientDao.getById(id);
        patientDao.delete(patient);
    }

    @Override
    public long countPatients() {
        return patientDao.count();
    }
    
}
