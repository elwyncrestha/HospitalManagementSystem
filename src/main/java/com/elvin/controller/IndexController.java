/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.mixedservice.MailService;
import com.elvin.modal.ContactMe;
import com.elvin.modal.Doctor;
import com.elvin.service.ContactMeService;
import com.elvin.service.DepartmentService;
import com.elvin.service.DoctorService;
import com.elvin.service.HServiceService;
import com.elvin.service.NurseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author elwyn
 */
@Controller
public class IndexController {
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String displayHome(){
        return "hospitalHome";
    }
    
    @RequestMapping(value = "/hospital/contact/display", method = RequestMethod.GET)
    public String displayContactPage(){
        return "hospitalContact";
    }
    
    @Autowired
    ContactMeService contactMeService;
    
    @PostMapping(value = "/hospital/contact/add")
    public String addContact(@ModelAttribute("ContactDetails") ContactMe contactMe){
        contactMeService.addContactor(contactMe);
        
//        MailService mailService = new MailService();
//        mailService = mailService.getMailService();
//        
//        String contactDetails = "Contact name: " + contactMe.getContactName() + "\nContact Email: " + contactMe.getContactEmail() + "\nContact Number: " + contactMe.getContactNumber() + "\nContact Message: " + contactMe.getContactMessage();
//                
//        mailService.sendDetailMail("elvinjava1@gmail.com", "elwyncrestha@gmail.com", "New Person Trying to Contact",contactDetails);
        
        String contactDetails = "Contact name: " + contactMe.getContactName() + "\nContact Email: " + contactMe.getContactEmail() + "\nContact Number: " + contactMe.getContactNumber() + "\nContact Message: " + contactMe.getContactMessage();
        MailService mailService = new MailService("elvinjava1@gmail.com","elwyncrestha@gmail.com","New Person Trying to Contact",contactDetails);

        return "redirect:/index";
    }
    
    @Autowired
    DoctorService doctorService;
    
    @GetMapping(value = "/hospital/doctor/display")
    public String displayDoctor(Model model){
        List<Doctor> list = doctorService.displayDoctor();
        model.addAttribute("DoctorDetails",list);
        return "hospitalDoctors";
    }
    
    @Autowired
    NurseService nurseService;
    
    @GetMapping(value = "/hospital/nurse/display")
    public String displayNurse(Model model){
        model.addAttribute("NurseDetails", nurseService.displayNurse());
        return "hospitalNurses";
    }
    
    @Autowired
    HServiceService hServiceService;
    
    @GetMapping(value = "/hospital/service/display")
    public String displayService(Model model){
        model.addAttribute("ServiceDetails",hServiceService.displayServices());
        return "hospitalServices";
    }
    
    @Autowired
    DepartmentService departmentService;
    
    @GetMapping(value = "/hospital/department/display")
    public String displayDepartment(Model model){
        model.addAttribute("DepartmentDetails",departmentService.displayDepartments());
        return "hospitalDepartments";
    }
    
}
