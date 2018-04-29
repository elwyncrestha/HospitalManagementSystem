/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.Nurse;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface NurseService {
    
    void addNurse(Nurse nurse);
    
    List<Nurse> displayNurse();
    
    Nurse getNurseById(int id);
    
    void updateNurse(Nurse nurse);
    
    void deleteNurse(int id);
    
}
