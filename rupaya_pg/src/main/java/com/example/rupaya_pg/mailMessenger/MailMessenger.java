package com.example.rupaya_pg.mailMessenger;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.example.rupaya_pg.config.MailConfig;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

public class MailMessenger {

    public static void htmlEmailMessenger(String from, String toMail, String subject, String body) throws MessagingException {
        JavaMailSender sender = MailConfig.getMailConfig();
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper htmlMessage = new MimeMessageHelper(message, true);

        htmlMessage.setTo(toMail);
        htmlMessage.setFrom(from);
        htmlMessage.setSubject(subject);
        htmlMessage.setText(body, true);
        sender.send(message);
    }



}
