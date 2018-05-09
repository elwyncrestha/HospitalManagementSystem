/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.ContactMe;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface ContactMeService {
    
    void addContactor(ContactMe contactMe);
    
    void deleteContactor(int id);
    
    long countContactors();
    
    List<ContactMe> displayContactors();
    
}
