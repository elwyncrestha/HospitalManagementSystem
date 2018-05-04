/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.service;

import com.elvin.modal.UserLogin;
import java.util.List;

/**
 *
 * @author elwyn
 */
public interface UserLoginService {
    
    void addUser(UserLogin userLogin);
    
    List<UserLogin> displayUsers();
    
    UserLogin getUserById(int id);
    
    void deleteUser(int id);
    
    boolean validateUserByUserNameAndEmail(String username, String email);
    
    UserLogin getUserByUsernameAndEmail(String username, String email);
    
    void updateUser(UserLogin userLogin);
    
    UserLogin getUserByPasswordAndEmail(String password, String email);
    
    boolean validateUserByEmailAndPassword(String email, String password);
    
}
