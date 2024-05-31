package com.azoza.web.zuki.controller.admin;

import com.azoza.web.zuki.dto.AuthResponseDTO;
import com.azoza.web.zuki.entity.Admin;
import com.azoza.web.zuki.entity.Product;
import com.azoza.web.zuki.entity.User;
import com.azoza.web.zuki.service.FileUploadService;
import com.azoza.web.zuki.service.ProductService;
import com.azoza.web.zuki.util.HibernateUtil;
import com.azoza.web.zuki.util.JwtTokenUtil;
import jakarta.inject.Inject;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.InputStream;
import java.net.URI;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Path("/admin/verify")
public class AdminVerificationController {

    @Inject
    JwtTokenUtil tokenUtil;

    @POST
    @Path("/{vcode}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response verify(@PathParam("vcode") String vcode){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Optional<Admin> op = session.createQuery("SELECT u FROM Admin u WHERE u.verification_code=:vc", Admin.class)
                .setParameter("vc",vcode).uniqueResultOptional();
        if(op.isPresent()){
            Admin admin = op.get();
            System.out.println("verify okkkkkkk");
            return Response.ok("ok").build();
        }else{

            System.out.println("verify noooo");
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid Verification Code.").build();
        }
    }
}
