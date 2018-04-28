/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.Doctor;
import com.elvin.service.DoctorService;
import java.util.List;
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
public class DoctorController {
    
    @Autowired
    DoctorService doctorService;
    
    @RequestMapping(value = "/admin/doctor/add", method = RequestMethod.GET)
    public String addDoctor(){
        return "addDoctor";
    }
    
    @RequestMapping(value = "/admin/doctor/add", method = RequestMethod.POST)
    public String addDoctorInf(@ModelAttribute("DoctorDetails") Doctor doctor){
        doctorService.insertDoctor(doctor);
        return "redirect:/admin/doctor/display";
    }
    
    @GetMapping(value = "/admin/doctor/display")
    public String displayDoctors(Model model){
        List<Doctor> list = doctorService.displayDoctor();
        model.addAttribute("DoctorDetails",list);
        return "displayDoctors";
    }
    
    @RequestMapping(value = "/admin/doctor/edit", method = RequestMethod.GET)
    public String displayEditPage(Model model){
        List<Doctor> list = doctorService.displayDoctor();
        model.addAttribute("DoctorDetails",list);
        return "editDoctor";
    }
    
    @RequestMapping(value = "/admin/doctor/edit/{id}", method = RequestMethod.GET)
    public String displayDoctorInf(@PathVariable("id") int id, Model model, Model model1){
        Doctor doctor = doctorService.getDocById(id);
        model.addAttribute("EditDoctorDetails",doctor);
        
        List<Doctor> list = doctorService.displayDoctor();
        model1.addAttribute("DoctorDetails",list);
        
        return "editDoctor";
    }
    
    @PostMapping(value = "/admin/doctor/edit")
    public String updateDoctor(@ModelAttribute("EditDocDetails") Doctor doctor){
        doctorService.updateDoctor(doctor);
        return "redirect:/admin/doctor/display";
    }
    
    @GetMapping(value = "/admin/doctor/delete/{id}")
    public String deleteDoctor(@PathVariable("id") int id){
        Doctor doctor = doctorService.getDocById(id);
        doctorService.deleteDoctor(doctor);
        return "redirect:/admin/doctor/display";
    }
}
