/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.dao;

import com.elvin.modal.UserLogin;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface UserLoginDao {
    
    void insert(UserLogin userLogin);
    
    UserLogin getById(int id);
    
    List<UserLogin> getAll();
    
    void delete(UserLogin userLogin);
    
}
