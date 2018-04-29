/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.Nurse;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface NurseDao {
    
    void insert(Nurse nurse);
    
    List<Nurse> display();
    
    Nurse getById(int id);
    
    void update(Nurse nurse);
    
    void delete(Nurse nurse);
    
    long getTotalNurse();
    
}
