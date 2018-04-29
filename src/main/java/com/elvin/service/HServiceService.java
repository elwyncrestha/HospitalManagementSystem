/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.HService;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface HServiceService {
    
    void insertService(HService hService);
    
    List<HService> displayServices();
    
    HService getServiceById(int id);
    
    void updateService(HService hService);
    
    void deteteService(HService hService);
    
    long countService();
    
}
