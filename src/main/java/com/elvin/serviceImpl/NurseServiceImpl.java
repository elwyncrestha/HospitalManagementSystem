/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.NurseDao;
import com.elvin.modal.Nurse;
import com.elvin.service.NurseService;
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
public class NurseServiceImpl implements NurseService{

    @Autowired
    NurseDao nurseDao;
    
    @Override
    public void addNurse(Nurse nurse) {
        nurseDao.insert(nurse);
    }

    @Override
    public List<Nurse> displayNurse() {
        return nurseDao.display();
    }

    @Override
    public Nurse getNurseById(int id) {
        return nurseDao.getById(id);
    }

    @Override
    public void updateNurse(Nurse nurse) {
        nurseDao.update(nurse);
    }

    @Override
    public void deleteNurse(int id) {
        Nurse nurse = nurseDao.getById(id);
        nurseDao.delete(nurse);
    }

    @Override
    public long countNurse() {
        return nurseDao.getTotalNurse();
    }
    
}
