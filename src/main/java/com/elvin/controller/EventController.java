/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author elwyn
 */
@Controller
public class EventController {
    
    @GetMapping(value = "/admin/event/display")
    public String displayEvents(){
        return "displayEvents";
    }
    
}
