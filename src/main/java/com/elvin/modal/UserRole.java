/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.modal;

import java.util.Collection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author elwyn
 */
@Entity
@Table(name = "userRole_tbl")
public class UserRole {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int roleId;
    
    private String authority;
    
    @OneToMany(mappedBy = "userRole")
    private Collection<UserLogin> userLogin;
    
}
