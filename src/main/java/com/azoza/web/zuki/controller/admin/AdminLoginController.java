package com.azoza.web.zuki.controller.admin;

import com.azoza.web.zuki.dto.AuthDTO;
import com.azoza.web.zuki.dto.AuthResponseDTO;
import com.azoza.web.zuki.entity.Admin;
import com.azoza.web.zuki.entity.User;
import com.azoza.web.zuki.mail.AdminVerificationMail;
import com.azoza.web.zuki.mail.VerificationMail;
import com.azoza.web.zuki.provider.MailServiceProvider;
import com.azoza.web.zuki.service.AdminService;
import com.azoza.web.zuki.service.UserService;
import com.azoza.web.zuki.util.Encryption;
import com.azoza.web.zuki.util.JwtTokenUtil;
import jakarta.inject.Inject;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.net.URI;
import java.util.Date;
import java.util.Optional;
import java.util.UUID;

@Path("/admin/login")
public class AdminLoginController {

    @Inject
    JwtTokenUtil tokenUtil;

//    @GET
//    public Viewable index(){
//        return new Viewable("/backend/adminlogin");
//    }


    @GET
    public Response showLoginPage(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("loggedIn") != null) {
            return Response.seeOther(URI.create(request.getContextPath() + "/admin")).build();
        }else {
            return Response.ok(new Viewable("/backend/adminlogin")).build();
        }
    }


    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response loginAction(AuthDTO authDTO){

        AdminService adminService = new AdminService();
        Optional<Admin> byEmail = adminService.getByEmail(authDTO.getEmail());
        if(byEmail.isPresent()){
            Admin admin = byEmail.get();
            if(admin.getPassword().equals(authDTO.getPassword())){
//                Admin admin1 = new Admin();
                String verificationCode = UUID.randomUUID().toString();
                admin.setVerification_code(verificationCode);

                adminService.updateAdmin(admin);

                AdminVerificationMail amail = new AdminVerificationMail(admin.getEmail(),verificationCode);
                MailServiceProvider.getInstance().sendMail(amail);

                return Response.ok().entity("verification email sent").build();
            }else{
                return Response.status(Response.Status.BAD_REQUEST).entity("Invalid Email or Password").build();
            }
        }else{
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid Email or Password").build();
        }

    }

//    @POST
//    @Path("/refresh-token")
//    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
//    @Produces(MediaType.APPLICATION_JSON)
//    public Response refreshToken(@FormParam("token") String refreshToken){
//        UserService userService = new UserService();
//        Optional<User> user = userService.getByEmail(tokenUtil.getUsernameFromToken(refreshToken));
//        if(user.isEmpty() || !tokenUtil.validateToken(refreshToken,user.get())){
//            return Response.status(Response.Status.UNAUTHORIZED).entity("Invalid refresh token").build();
//        }else{
//            String accessToken = tokenUtil.generateAccessToken(user.get());
//            Date expireIn = tokenUtil.getExpireDateFromToken(accessToken);
//
//            AuthResponseDTO dto = new AuthResponseDTO(accessToken,refreshToken,String.valueOf(expireIn.getTime()));
//            return Response.ok().entity(dto).build();
//        }
//    }
}
