package com.azoza.web.zuki.mail;

import com.azoza.web.zuki.util.Env;
import io.rocketbase.mail.model.HtmlTextEmail;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;

public class AdminVerificationMail extends Mailable{

    private String to;
    private String verificationCode;

    public AdminVerificationMail(String to, String verificationCode){
        this.to = to;
        this.verificationCode = verificationCode;
    }
    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(to));
        message.setSubject("Admin Login Verification");

        String appUrl = Env.get("app_url");
        String verifyCode = "Your Verification Code - "+verificationCode;

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("https://www.rocketbase.io/img/logo-dark.png").logoHeight(41)
                .and()
                .text("Welcome,"+to).h1().center().and()
                .text("Use Below Code for Verification").center().and()
                .text(verifyCode).and()
//                .button("verify", verifyUrl).blue().and()
                .text("Thank You").center().and()
//                .html("<a href=\""+verifyUrl+"\">"+verifyUrl+"</a>").and()

                .copyright(appUrl).url(appUrl).suffix(". All rights reserved.").and()

                .build();

                message.setContent(content.getHtml(),"text/html");
    }
}
