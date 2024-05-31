package com.azoza.web.zuki.controller;

import com.azoza.web.zuki.dto.RegisterDTO;
import com.azoza.web.zuki.entity.User;
import com.azoza.web.zuki.mail.VerificationMail;
import com.azoza.web.zuki.provider.MailServiceProvider;
import com.azoza.web.zuki.service.UserService;
import com.azoza.web.zuki.util.Encryption;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.Optional;
import java.util.UUID;
import java.util.regex.Pattern;

@Path("/register")
public class RegisterController {
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO){

        // Validate non-empty fields
        if (isEmpty(registerDTO.getFirstname()) ||
                isEmpty(registerDTO.getLastname()) ||
                isEmpty(registerDTO.getEmail()) ||
                isEmpty(registerDTO.getPassword()) ||
                isEmpty(registerDTO.getMobile()) ||
                isEmpty(registerDTO.getCity()) ||
                isEmpty(registerDTO.getAddressline01()) ||
                isEmpty(registerDTO.getAddressline02())) {
            return Response.status(Response.Status.BAD_REQUEST).entity("All fields are required").build();
        }

        // Validate email
        if (!isValidEmail(registerDTO.getEmail())) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid email address").build();
        }

        // Validate password
        if (!isValidPassword(registerDTO.getPassword())) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid password").build();
        }

        // Validate mobile
        if (!isValidMobile(registerDTO.getMobile())) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid mobile number").build();
        }


        UserService userService  = new UserService();
        Optional<User> byEmail = userService.getByEmail(registerDTO.getEmail());
        if(byEmail.isPresent()){
            return Response.status(Response.Status.BAD_REQUEST).entity("Email already exists").build();
        }else{
            User user = new User();
            user.setEmail(registerDTO.getEmail());
            user.setPassword(Encryption.encrypt(registerDTO.getPassword()));

            String verificationCode = UUID.randomUUID().toString();
            user.setVerification_code(verificationCode);
            user.setMobile(registerDTO.getMobile());
            user.setFirstname(registerDTO.getFirstname());
            user.setLastname(registerDTO.getLastname());
            user.setCity(registerDTO.getCity());
            user.setAddressline01(registerDTO.getAddressline01());
            user.setAddressline02(registerDTO.getAddressline02());

            userService.saveUser(user);

            VerificationMail mail = new VerificationMail(user.getEmail(),verificationCode);
            MailServiceProvider.getInstance().sendMail(mail);

            return Response.ok().entity("Register Success & Check Your Email..").build();
        }
    }

    private boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return Pattern.matches(emailRegex, email);
    }

    private boolean isValidPassword(String password) {
        return password.length() >= 8;
    }

    private boolean isValidMobile(String mobile) {
        return mobile.matches("\\d{10}"); // 10-digit mobile number
    }

    private boolean isEmpty(String value) {
        return value == null || value.trim().isEmpty();
    }

}
