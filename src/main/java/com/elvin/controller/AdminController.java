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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    
}
