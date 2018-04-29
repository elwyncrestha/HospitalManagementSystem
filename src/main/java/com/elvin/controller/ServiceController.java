/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.HService;
import com.elvin.service.HServiceService;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ServiceController {
    
    @Autowired
    HServiceService hServiceService;
    
    @RequestMapping(value = "/admin/service/add", method = RequestMethod.GET)
    public String addService(){
        return "addService";
    }
    
    @PostMapping(value = "/admin/service/add")
    public String addServiceInf(@ModelAttribute("ServiceDetails") HService hService){
        hServiceService.insertService(hService);
        return "redirect:/admin/service/display";
    }
    
    @GetMapping(value = "/admin/service/display")
    public String displayService(Model model){
        model.addAttribute("ServiceDetails",hServiceService.displayServices());
        return "displayServices";
    }
    
    @RequestMapping(value = "/admin/service/edit", method = RequestMethod.GET)
    public String displayEditService(Model model){
        model.addAttribute("ServiceDetails",hServiceService.displayServices());
        return "editService";
    }
    
    @GetMapping(value = "/admin/service/edit/{id}")
    public String editService(@PathVariable("id") int id, Model displayModel, Model editModel){
        displayModel.addAttribute("ServiceDetails",hServiceService.displayServices());
        
        HService hService = hServiceService.getServiceById(id);
        editModel.addAttribute("EditServiceDetails", hService);
        
        return "editService";
    }
    
    @PostMapping(value = "/admin/service/edit")
    public String editServiceInf(@ModelAttribute("EditService") HService hService){
        hServiceService.updateService(hService);
        return "redirect:/admin/service/display";
    }
    
    @GetMapping(value = "/admin/service/delete/{id}")
    public String deleteService(@PathVariable("id") int id){
        HService hService = hServiceService.getServiceById(id);
        hServiceService.deteteService(hService);
        return "redirect:/admin/service/display";
    }
    
}
