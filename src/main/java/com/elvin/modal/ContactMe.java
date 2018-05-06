/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.modal;

import java.io.Serializable;
import javax.persistence.Column;
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
@Table(name = "contactMe_tbl")
public class ContactMe implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int contactId;
    
    private String contactName;
    
    private String contactEmail;
    
    private String contactNumber;
    
    @Column(length = 500)
    private String contactMessage;

    public ContactMe() {
    }

    public ContactMe(int contactId, String contactName, String contactEmail, String contactNumber, String contactMessage) {
        this.contactId = contactId;
        this.contactName = contactName;
        this.contactEmail = contactEmail;
        this.contactNumber = contactNumber;
        this.contactMessage = contactMessage;
    }

    public ContactMe(String contactName, String contactEmail, String contactNumber, String contactMessage) {
        this.contactName = contactName;
        this.contactEmail = contactEmail;
        this.contactNumber = contactNumber;
        this.contactMessage = contactMessage;
    }

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getContactMessage() {
        return contactMessage;
    }

    public void setContactMessage(String contactMessage) {
        this.contactMessage = contactMessage;
    }
    
    
    
}
