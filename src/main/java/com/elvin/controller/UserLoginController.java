/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.mixedservice.MailService;
import com.elvin.mixedservice.RandomCodeGenerator;
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
import org.springframework.web.bind.annotation.RequestParam;

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
    
    @RequestMapping(value = "/user/reset", method = RequestMethod.GET)
    public String resetPassword(){
        return "resetPassword";
    }
    
    @PostMapping(value = "/user/reset")
    public String validateUser(@RequestParam("username") String username, @RequestParam("email") String email, Model model){
        String returnString = null;
        boolean userStatus = userLoginService.validateUserByUserNameAndEmail(username, email);
        
        if (userStatus) {
            RandomCodeGenerator randomCodeGenerator = new RandomCodeGenerator();
            String newPassword = randomCodeGenerator.getRandomCode(20);
            
            
            //update password in database
            UserLogin userLogin = userLoginService.getUserByUsernameAndEmail(username, email);
            userLogin.setPassword(newPassword);
            userLoginService.updateUser(userLogin);
            
            MailService sender = new MailService(); 
            sender = sender.getMailService();   //gets mail service object
            sender.sendDetailMail("elvinjava1@gmail.com", email, "Password change", "Your new password is: " + newPassword);
            
            model.addAttribute("LogoutMessage", "Password changed successfully ! New password is sent to your email");
            return "login";
            
        }else{
            model.addAttribute("ResetMessage", "Wrong username or email");
            returnString = "resetPassword";
        }
        
        return returnString;
    }
    
    @GetMapping(value = "/user/changepassword")
    public String displayPasswordEditPage(){
        return "editPassword";
    }
    
    @PostMapping(value = "/user/changepassword")
    public String editPassword(@RequestParam("email") String email, @RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassword, Model model){
        
        boolean userStatus = userLoginService.validateUserByEmailAndPassword(email, oldPassword);
        String returnString = null;
        
        if (userStatus) {
            UserLogin userLogin = userLoginService.getUserByPasswordAndEmail(oldPassword, email);
            userLogin.setPassword(newPassword);
            userLoginService.updateUser(userLogin);
            model.addAttribute("LogoutMessage", "Password changed successfully !!!");
            returnString = "login";
        }
        else{
            model.addAttribute("ChangeFailMessage", "Wrong email or password !!!");
            returnString = "editPassword";
        }
        
        return returnString;
    }
}
