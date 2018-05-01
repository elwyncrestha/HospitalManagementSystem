/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.service.DepartmentService;
import com.elvin.service.DoctorService;
import com.elvin.service.HServiceService;
import com.elvin.service.NurseService;
import com.elvin.service.PatientService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author elwyn
 */
@Controller
public class AdminController {
    
    @Autowired
    DoctorService doctorService;
    
    @Autowired
    NurseService nurseService;
    
    @Autowired
    HServiceService hServiceService;
    
    @Autowired
    DepartmentService departmentService;
    
    @Autowired
    PatientService patientService;
    
    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public String displayAdminHome(Model modelCountDoc, Model modelCountNurse, Model modelCountService, Model modelCountDepartment, Model modelCountPatient){
        modelCountDoc.addAttribute("CountDoc", doctorService.countDoc());
        modelCountNurse.addAttribute("CountNurse", nurseService.countNurse());
        modelCountService.addAttribute("CountService", hServiceService.countService());
        modelCountDepartment.addAttribute("CountDepartment", departmentService.countDepartments());
        modelCountPatient.addAttribute("CountPatient", patientService.countPatients());
        return "adminHome";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String displayLogin(){
        return "login";
    }
    
    //NOTE: login post method processed through spring-security.xml
    
    @GetMapping(value = "/login/failure")
    public String returnFailedLogin(Model model){
        model.addAttribute("LoginMessage", "Wrong username or password !!!");
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
    
    
    
}
