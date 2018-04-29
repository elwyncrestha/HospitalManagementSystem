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
@Table(name = "service_tbl")
public class HService implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int serviceId;
    
    private String serviceName;
    
    private String serviceStartTime;
    
    private String serviceEndTime;
    
    private float serviceCost;

    public HService() {
    }

    public HService(int serviceId, String serviceName, String serviceStartTime, String serviceEndTime, float serviceCost) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.serviceStartTime = serviceStartTime;
        this.serviceEndTime = serviceEndTime;
        this.serviceCost = serviceCost;
    }

    public HService(String serviceName, String serviceStartTime, String serviceEndTime, float serviceCost) {
        this.serviceName = serviceName;
        this.serviceStartTime = serviceStartTime;
        this.serviceEndTime = serviceEndTime;
        this.serviceCost = serviceCost;
    }

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getServiceStartTime() {
        return serviceStartTime;
    }

    public void setServiceStartTime(String serviceStartTime) {
        this.serviceStartTime = serviceStartTime;
    }

    public String getServiceEndTime() {
        return serviceEndTime;
    }

    public void setServiceEndTime(String serviceEndTime) {
        this.serviceEndTime = serviceEndTime;
    }

    public float getServiceCost() {
        return serviceCost;
    }

    public void setServiceCost(float serviceCost) {
        this.serviceCost = serviceCost;
    }
    
    
    
}
