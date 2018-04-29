/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.modal;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author elwyn
 */
@Entity
@Table(name = "nurse_tbl")
public class Nurse implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int nurseId;
    
    private String nurseFirstName;
    
    private String nurseLastName;
    
    private String nurseGender;
    
    private String nurseDOB;
    
    private String nurseEduBG;
    
    private String nurseCountry;

    public Nurse() {
    }

    public Nurse(int nurseId, String nurseFirstName, String nurseLastName, String nurseGender, String nurseDOB, String nurseEduBG, String nurseCountry) {
        this.nurseId = nurseId;
        this.nurseFirstName = nurseFirstName;
        this.nurseLastName = nurseLastName;
        this.nurseGender = nurseGender;
        this.nurseDOB = nurseDOB;
        this.nurseEduBG = nurseEduBG;
        this.nurseCountry = nurseCountry;
    }

    public Nurse(String nurseFirstName, String nurseLastName, String nurseGender, String nurseDOB, String nurseEduBG, String nurseCountry) {
        this.nurseFirstName = nurseFirstName;
        this.nurseLastName = nurseLastName;
        this.nurseGender = nurseGender;
        this.nurseDOB = nurseDOB;
        this.nurseEduBG = nurseEduBG;
        this.nurseCountry = nurseCountry;
    }

    public int getNurseId() {
        return nurseId;
    }

    public void setNurseId(int nurseId) {
        this.nurseId = nurseId;
    }

    public String getNurseFirstName() {
        return nurseFirstName;
    }

    public void setNurseFirstName(String nurseFirstName) {
        this.nurseFirstName = nurseFirstName;
    }

    public String getNurseLastName() {
        return nurseLastName;
    }

    public void setNurseLastName(String nurseLastName) {
        this.nurseLastName = nurseLastName;
    }

    public String getNurseGender() {
        return nurseGender;
    }

    public void setNurseGender(String nurseGender) {
        this.nurseGender = nurseGender;
    }

    public String getNurseDOB() {
        return nurseDOB;
    }

    public void setNurseDOB(String nurseDOB) {
        this.nurseDOB = nurseDOB;
    }

    public String getNurseEduBG() {
        return nurseEduBG;
    }

    public void setNurseEduBG(String nurseEduBG) {
        this.nurseEduBG = nurseEduBG;
    }

    public String getNurseCountry() {
        return nurseCountry;
    }

    public void setNurseCountry(String nurseCountry) {
        this.nurseCountry = nurseCountry;
    }
    
    
    
}
