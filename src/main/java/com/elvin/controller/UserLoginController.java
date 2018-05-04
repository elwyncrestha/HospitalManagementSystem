/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.UserLogin;
import com.elvin.service.UserLoginService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author elwyn
 */
@Controller
public class UserLoginController {
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String displayLogin(){
        return "login";
    }
    
    //NOTE: login post method processed through spring-security.xml
    
    @GetMapping(value = "/login/failure")
    public String returnFailedLogin(Model model){
        model.addAttribute("LoginMessage", "Login failed !!!");
        return "login";
    }
    
    @GetMapping(value = "/logout")
    public String returnLogin(HttpServletRequest request, HttpServletResponse response, Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        model.addAttribute("LogoutMessage", "Logout successful !!!");
        return "login";
    }
    
    @Autowired
    UserLoginService userLoginService;
    
    @PostMapping(value = "/register")
    public String addUser(@ModelAttribute("UserDetails") UserLogin userLogin){
        userLoginService.addUser(userLogin);
        return "redirect:/login";
    }
    
    @GetMapping(value = "/admin/user/display")
    public String displayUsers(Model model){
        model.addAttribute("UserDetails", userLoginService.displayUsers());
        return "displayUsers";
    }
    
    @GetMapping(value = "/admin/user/edit")
    public String displayEditUsers(Model model){
        model.addAttribute("UserDetails", userLoginService.displayUsers());
        return "editUser";
    }
    
    @GetMapping(value = "/admin/user/edit/{id}")
    public String displayEditUsers(@PathVariable("id") int id, Model displayModel, Model editModel){
        UserLogin userLogin = userLoginService.getUserById(id);
        editModel.addAttribute("EditUserDetails", userLogin);
        
        displayModel.addAttribute("UserDetails", userLoginService.displayUsers());
        return "editUser";
    }
    
}
