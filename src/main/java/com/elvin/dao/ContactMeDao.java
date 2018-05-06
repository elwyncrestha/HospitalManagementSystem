/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.ContactMe;

/**
 *
 * @author elwyn
 */
public interface ContactMeDao {
    
    void insert(ContactMe contactMe);
    
    void delete(ContactMe contactMe);
    
    long count();
    
}
