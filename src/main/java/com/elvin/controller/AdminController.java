/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author elwyn
 */
@Controller
public class AdminController {
    
    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String displayAdminHome(){
        return "adminHome";
    }
    
}
