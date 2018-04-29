/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.HService;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface HServiceDao {
    
    void addService(HService hService);
    
    List<HService> displayServices();
    
    void updateService(HService hService);
    
    HService getServiceById(int id);
    
    void deleteService(HService hService);
    
    long countServices();
    
}
