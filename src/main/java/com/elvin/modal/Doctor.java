/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.modal;

import java.io.Serializable;
import java.time.LocalDateTime;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

/**
 *
 * @author elwyn
 */
@Entity
@Table(name = "doctor_tbl")
public class Doctor implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int doctorId;
    
    private String doctorFirstName;
    
    private String doctorLastName;
    
    private char doctorGender;
    
    private String doctorDOB;
    
    private String doctorEduBG;
    
    private String doctorCountry;

    public Doctor() {
    }

    public Doctor(int doctorId, String doctorFirstName, String doctorLastName, char doctorGender, String doctorDOB, String doctorEduBG, String doctorCountry) {
        this.doctorId = doctorId;
        this.doctorFirstName = doctorFirstName;
        this.doctorLastName = doctorLastName;
        this.doctorGender = doctorGender;
        this.doctorDOB = doctorDOB;
        this.doctorEduBG = doctorEduBG;
        this.doctorCountry = doctorCountry;
    }

    public Doctor(String doctorFirstName, String doctorLastName, char doctorGender, String doctorDOB, String doctorEduBG, String doctorCountry) {
        this.doctorFirstName = doctorFirstName;
        this.doctorLastName = doctorLastName;
        this.doctorGender = doctorGender;
        this.doctorDOB = doctorDOB;
        this.doctorEduBG = doctorEduBG;
        this.doctorCountry = doctorCountry;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorFirstName() {
        return doctorFirstName;
    }

    public void setDoctorFirstName(String doctorFirstName) {
        this.doctorFirstName = doctorFirstName;
    }

    public String getDoctorLastName() {
        return doctorLastName;
    }

    public void setDoctorLastName(String doctorLastName) {
        this.doctorLastName = doctorLastName;
    }

    public char getDoctorGender() {
        return doctorGender;
    }

    public void setDoctorGender(char doctorGender) {
        this.doctorGender = doctorGender;
    }

    public String getDoctorDOB() {
        return doctorDOB;
    }

    public void setDoctorDOB(String doctorDOB) {
        this.doctorDOB = doctorDOB;
    }

    public String getDoctorEduBG() {
        return doctorEduBG;
    }

    public void setDoctorEduBG(String doctorEduBG) {
        this.doctorEduBG = doctorEduBG;
    }

    public String getDoctorCountry() {
        return doctorCountry;
    }

    public void setDoctorCountry(String doctorCountry) {
        this.doctorCountry = doctorCountry;
    }
    
    
    
}
