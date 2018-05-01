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
@Table(name = "patient_tbl")
public class Patient implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int patientId;
    
    private String patientFirstName;
    
    private String patientLastName;
    
    private char patientGender;
    
    private String patientDOB;
    
    private String healthProblem;
    
    private String patientCountry;

    public Patient() {
    }

    public Patient(int patientId, String patientFirstName, String patientLastName, char patientGender, String patientDOB, String healthProblem, String patientCountry) {
        this.patientId = patientId;
        this.patientFirstName = patientFirstName;
        this.patientLastName = patientLastName;
        this.patientGender = patientGender;
        this.patientDOB = patientDOB;
        this.healthProblem = healthProblem;
        this.patientCountry = patientCountry;
    }

    public Patient(String patientFirstName, String patientLastName, char patientGender, String patientDOB, String healthProblem, String patientCountry) {
        this.patientFirstName = patientFirstName;
        this.patientLastName = patientLastName;
        this.patientGender = patientGender;
        this.patientDOB = patientDOB;
        this.healthProblem = healthProblem;
        this.patientCountry = patientCountry;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getPatientFirstName() {
        return patientFirstName;
    }

    public void setPatientFirstName(String patientFirstName) {
        this.patientFirstName = patientFirstName;
    }

    public String getPatientLastName() {
        return patientLastName;
    }

    public void setPatientLastName(String patientLastName) {
        this.patientLastName = patientLastName;
    }

    public char getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(char patientGender) {
        this.patientGender = patientGender;
    }
    
    public String getPatientDOB() {
        return patientDOB;
    }

    public void setPatientDOB(String patientDOB) {
        this.patientDOB = patientDOB;
    }

    public String getHealthProblem() {
        return healthProblem;
    }

    public void setHealthProblem(String healthProblem) {
        this.healthProblem = healthProblem;
    }

    public String getPatientCountry() {
        return patientCountry;
    }

    public void setPatientCountry(String patientCountry) {
        this.patientCountry = patientCountry;
    }
    
    
    
    
}
