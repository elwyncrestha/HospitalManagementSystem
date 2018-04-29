/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.HServiceDao;
import com.elvin.modal.HService;
import com.elvin.service.HServiceService;
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
public class HServiceServiceImpl implements HServiceService{

    @Autowired
    HServiceDao hServiceDao;
    
    @Override
    public void insertService(HService hService) {
        hServiceDao.addService(hService);
    }

    @Override
    public List<HService> displayServices() {
        return hServiceDao.displayServices();
    }

    @Override
    public HService getServiceById(int id) {
        return hServiceDao.getServiceById(id);
    }

    @Override
    public void updateService(HService hService) {
        hServiceDao.updateService(hService);
    }

    @Override
    public void deteteService(HService hService) {
        hServiceDao.deleteService(hService);
    }

    @Override
    public long countService() {
        return hServiceDao.countServices();
    }
    
}
