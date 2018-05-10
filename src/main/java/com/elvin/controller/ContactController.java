/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.service.ContactMeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author elwyn
 */
@Controller
public class ContactController {
    
    @Autowired
    ContactMeService contactMeService;
    
    @RequestMapping(value = "/admin/contact/display", method = RequestMethod.GET)
    public String displayContacts(Model model){
        model.addAttribute("ContactDetails", contactMeService.displayContactors());
        return "displayContacts";
    }
    
    @GetMapping(value = "/admin/contact/delete")
    public String displayDeleteContact(Model model){
        model.addAttribute("ContactDetails", contactMeService.displayContactors());
        return "deleteContact";
    }
    
    @GetMapping(value = "/admin/contact/delete/{id}")
    public String deleteContactor(@PathVariable("id") int id){
        contactMeService.deleteContactor(id);
        return "redirect:/admin/contact/display";
    }
    
}
