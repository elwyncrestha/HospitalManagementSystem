/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.Department;
import com.elvin.service.DepartmentService;
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
public class DepartmentController {
    
    @Autowired
    DepartmentService departmentService;
    
    @GetMapping(value = "/admin/department/add")
    public String addDepartmentPage(){
        return "addDepartment";
    }
    
    @PostMapping(value = "/admin/department/add")
    public String addDepartment(@ModelAttribute("DepartmentDetails") Department department){
        departmentService.addDepartment(department);
        return "redirect:/admin/department/display";
    }
    
    @RequestMapping(value = "/admin/department/display", method = RequestMethod.GET)
    public String displayDepartments(Model model){
        model.addAttribute("DepartmentDetails",departmentService.displayDepartments());
        return "displayDepartments";
    }
    
    @GetMapping(value = "/admin/department/edit")
    public String displayEditPage(Model model){
        List<Department> list = departmentService.displayDepartments();
        model.addAttribute("DepartmentDetails", list);
        return "editDepartment";
    }
    
    @GetMapping(value = "/admin/department/edit/{id}")
    public String addEditDetails(@PathVariable("id") int id,Model displayModel, Model editModel){
        List<Department> list = departmentService.displayDepartments();
        displayModel.addAttribute("DepartmentDetails", list);
        
        Department department = departmentService.getDepartmentById(id);
        editModel.addAttribute("EditDepartmentDetails", department);
        return "editDepartment";
    }
    
    @RequestMapping(value = "/admin/department/edit", method = RequestMethod.POST)
    public String updateDepartment(@ModelAttribute("EditDepartment") Department department){
        departmentService.updateDepartment(department);
        return "redirect:/admin/department/display";
    }
    
    @GetMapping(value = "/admin/department/delete/{id}")
    public String deleteDepartment(@PathVariable("id") int id){
        departmentService.deleteDepartment(id);
        return "redirect:/admin/department/display";
    }
    
}
