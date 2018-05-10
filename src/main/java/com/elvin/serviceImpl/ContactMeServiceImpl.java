/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.ContactMeDao;
import com.elvin.modal.ContactMe;
import com.elvin.service.ContactMeService;
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
public class ContactMeServiceImpl implements ContactMeService{

    @Autowired
    ContactMeDao contactMeDao;
    
    @Override
    public void addContactor(ContactMe contactMe) {
        contactMeDao.insert(contactMe);
    }

    @Override
    public void deleteContactor(int id) {
        ContactMe contactMe = contactMeDao.getById(id);
        contactMeDao.delete(contactMe);
    }

    @Override
    public long countContactors() {
        return contactMeDao.count();
    }

    @Override
    public List<ContactMe> displayContactors() {
        return contactMeDao.display();
    }
    
}
