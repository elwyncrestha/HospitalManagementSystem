/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.Patient;
import com.elvin.service.PatientService;
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
public class PatientController {
    
    @Autowired
    PatientService patientService;
    
    @RequestMapping(value = "/admin/patient/add", method = RequestMethod.GET)
    public String displayAddPage(){
        return "addPatient";
    }
    
    @PostMapping(value = "/admin/patient/add")
    public String addPatient(@ModelAttribute("PatientDetails") Patient patient){
        patientService.addPatient(patient);
        return "redirect:/admin/patient/display";
    }
    
    @GetMapping(value = "/admin/patient/display")
    public String displayPatients(Model model){
        model.addAttribute("PatientDetails", patientService.displayPatients());
        return "displayPatients";
    }
    
    @GetMapping(value = "/admin/patient/edit")
    public String displayEditPage(Model model){
        model.addAttribute("PatientDetails", patientService.displayPatients());
        return "editPatient";
    }
    
    @GetMapping(value = "/admin/patient/edit/{id}")
    public String fillEditDetails(@PathVariable("id") int id, Model editModel, Model displayModel){
        editModel.addAttribute("EditPatientDetails", patientService.getPatientById(id));
        
        displayModel.addAttribute("PatientDetails", patientService.displayPatients());
        return "editPatient";
    }
    
    @PostMapping(value = "/admin/patient/edit")
    public String updatePatient(@ModelAttribute("UpdateDetails") Patient patient){
        patientService.updatePatient(patient);
        return "redirect:/admin/patient/display";
    }
    
    @RequestMapping(value = "/admin/patient/delete/{id}", method = RequestMethod.GET)
    public String deletePatient(@PathVariable("id") int id){
        patientService.deletePatient(id);
        return "redirect:/admin/patient/display";
    }
    
}
