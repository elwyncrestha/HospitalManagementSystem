/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import com.elvin.modal.Nurse;
import com.elvin.service.NurseService;
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
public class NurseController {
    
    @Autowired
    NurseService nurseService;
    
    @RequestMapping(value = "/admin/nurse/add", method = RequestMethod.GET)
    public String addNurse(){
        return "addNurse";
    }
    
    @PostMapping(value = "/admin/nurse/add")
    public String addNurseInf(@ModelAttribute("NurseDetails") Nurse nurse){
        nurseService.addNurse(nurse);
        return "redirect:/admin/nurse/display";
    }
    
    @GetMapping(value = "/admin/nurse/display")
    public String displayNurse(Model model){
        List<Nurse> list = nurseService.displayNurse();
        model.addAttribute("NurseDetails", list);
        return "displayNurses";
    }
    
    @RequestMapping(value = "/admin/nurse/edit", method = RequestMethod.GET)
    public String displayEditNurse(Model model){
        List<Nurse> list = nurseService.displayNurse();
        model.addAttribute("NurseDetails", list);
        return "editNurse";
    }
    
    @GetMapping(value = "/admin/nurse/edit/{id}")
    public String editNurse(@PathVariable("id") int id, Model displayModel, Model editModel){
        displayModel.addAttribute("NurseDetails", nurseService.displayNurse());
        
        Nurse nurse = nurseService.getNurseById(id);
        editModel.addAttribute("EditNurseDetails", nurse);
        return "editNurse";
    }
    
    @PostMapping(value = "/admin/nurse/edit")
    public String updateNurse(@ModelAttribute("UpdateNurse") Nurse nurse){
        nurseService.updateNurse(nurse);
        return "redirect:/admin/nurse/display";
    }
    
    @GetMapping(value = "/admin/nurse/delete/{id}")
    public String deleteNurse(@PathVariable("id") int id){
        nurseService.deleteNurse(id);
        return "redirect:/admin/nurse/display";
    }
    
}
