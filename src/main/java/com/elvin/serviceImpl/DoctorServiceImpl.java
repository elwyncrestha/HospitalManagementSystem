/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.DoctorDao;
import com.elvin.modal.Doctor;
import com.elvin.service.DoctorService;
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
public class DoctorServiceImpl implements DoctorService{
    
    @Autowired
    DoctorDao doctorDao;

    @Override
    public void insertDoctor(Doctor doctor) {
        doctorDao.insert(doctor);
    }

    @Override
    public List<Doctor> displayDoctor() {
        List<Doctor> list = doctorDao.getAllDoc();
        return list;
    }

    @Override
    public Doctor getDocById(int id) {
        List<Doctor> list = doctorDao.getDocById(id);
        return list.get(0);
    }

    @Override
    public void updateDoctor(Doctor doctor) {
        doctorDao.update(doctor);
    }

    @Override
    public void deleteDoctor(Doctor doctor) {
        doctorDao.delete(doctor);
    }
    
}
