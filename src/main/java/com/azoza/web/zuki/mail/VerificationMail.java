package com.azoza.web.zuki.mail;

import com.azoza.web.zuki.util.Env;
import io.rocketbase.mail.model.HtmlTextEmail;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;

public class VerificationMail extends Mailable{

    private String to;
    private String verificationCode;

    public VerificationMail(String to, String verificationCode){
        this.to = to;
        this.verificationCode = verificationCode;
    }
    @Override
    public void build(Message message) throws MessagingException {
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(to));
        message.setSubject("Please Confirm Your Email to Zuki");

        String appUrl = Env.get("app_url");
        String verifyUrl = appUrl+"verify?token="+verificationCode;

        HtmlTextEmail content = getEmailTemplateBuilder()
                .header()
                .logo("https://www.rocketbase.io/img/logo-dark.png").logoHeight(41)
                .and()
                .text("Welcome,"+to).h1().center().and()
                .text("Verify Your Email For Registration").center().and()
                .text("click the below button for verify:").and()
                .button("verify", verifyUrl).blue().and()
                .text("if button not working, click this url").center().and()
                .html("<a href=\""+verifyUrl+"\">"+verifyUrl+"</a>").and()

                .copyright(appUrl).url(appUrl).suffix(". All rights reserved.").and()

                .build();

                message.setContent(content.getHtml(),"text/html");
    }
}
