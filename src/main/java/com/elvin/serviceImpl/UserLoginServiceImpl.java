/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.serviceImpl;

import com.elvin.dao.UserLoginDao;
import com.elvin.modal.UserLogin;
import com.elvin.service.UserLoginService;
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
public class UserLoginServiceImpl implements UserLoginService{

    @Autowired
    UserLoginDao userLoginDao;
    
    @Override
    public void addUser(UserLogin userLogin) {
        userLoginDao.insert(userLogin);
    }

    @Override
    public List<UserLogin> displayUsers() {
        return userLoginDao.getAll();
    }

    @Override
    public UserLogin getUserById(int id) {
        return userLoginDao.getById(id);
    }

    @Override
    public void deleteUser(int id) {
        UserLogin userLogin = userLoginDao.getById(id);
        userLoginDao.delete(userLogin);
    }

    @Override
    public boolean validateUserByUserNameAndEmail(String username, String email) {
        return userLoginDao.validate(username, email);
    }

    @Override
    public UserLogin getUserByUsernameAndEmail(String username, String email) {
        return userLoginDao.getBy_UsernameEmail(username, email);
    }

    @Override
    public void updateUser(UserLogin userLogin) {
        userLoginDao.update(userLogin);
    }

    @Override
    public UserLogin getUserByPasswordAndEmail(String password, String email) {
        return userLoginDao.getBy_EmailAndPassword(email, password);
    }

    @Override
    public boolean validateUserByEmailAndPassword(String email, String password) {
        return userLoginDao.validateByEmailAndPassword(email, password);
    }
    
}
