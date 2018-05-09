/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.mixedservice;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

/**
 *
 * @author elwyn
 */
public class MailService {

    private MailSender mailSender;
    private SimpleMailMessage simpleMailMessage;
    
    public MailService(){
    }
    
    public MailService(String from, String to, String subject, String msg){
        MailService mailService = new MailService();
        mailService = mailService.getMailService();
        mailService.sendDetailMail(from, to, subject, msg);
    }

    public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
        this.simpleMailMessage = simpleMailMessage;
    }

    public void setMailSender(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendSimpleMail(String dear, String content) {
        
        SimpleMailMessage message = new SimpleMailMessage(simpleMailMessage);
        message.setText(String.format(simpleMailMessage.getText(), dear, content));

        mailSender.send(message);

    }

    public void sendDetailMail(String from, String to, String subject, String msg) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(msg);

        mailSender.send(message);
    }

    public MailService getMailService() {

        ApplicationContext context = new ClassPathXmlApplicationContext("spring-mail.xml"); //spring-mail xml file in Other Sources - resources folder
        MailService mailService = (MailService) context.getBean("mailMail");
        
        return mailService;
    }
}
