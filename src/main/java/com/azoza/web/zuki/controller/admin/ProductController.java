package com.azoza.web.zuki.controller.admin;

import com.azoza.web.zuki.service.FileUploadService;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.InputStream;
import java.net.URI;

@Path("/admin/product")
public class ProductController {
    @Context
    ServletContext context;

//    @GET
//    public Viewable index() {
//        return new Viewable("/backend/product/view");
//    }
    @GET
    public Response index(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loggedIn") != null) {
            return Response.ok(new Viewable("/backend/product/view")).build();
        } else {
            return Response.seeOther(URI.create(request.getContextPath() + "/admin/login")).build();
        }
    }

    @GET
    @Path("/add")
//    public Viewable add() {
//        return new Viewable("/backend/product/add");
//    }
    public Response indexx(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loggedIn") != null) {
            return Response.ok(new Viewable("/backend/product/add")).build();
        } else {
            return Response.seeOther(URI.create(request.getContextPath() + "/admin/login")).build();
        }
    }


    @Path("/upload-image")
    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response action(@FormDataParam("file") InputStream is,
                           @FormDataParam("file") FormDataContentDisposition fileMetaData) {
        FileUploadService uploadService = new FileUploadService(context);
        //FileUploadService.FileItem fileItem = uploadService.upload("slider/s1",is, fileMetaData);
        uploadService.delete("abc");

        return Response.ok().entity("").build();
    }

}
