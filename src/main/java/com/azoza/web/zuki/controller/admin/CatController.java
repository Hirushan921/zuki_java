package com.azoza.web.zuki.controller.admin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.net.URI;

@Path("/admin/category")
public class CatController {

//    @GET
//    public Viewable index(){
//        return new Viewable("/backend/product/category");
//    }
    @GET
    public Response index(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loggedIn") != null) {
            return Response.ok(new Viewable("/backend/product/category")).build();
        } else {
            return Response.seeOther(URI.create(request.getContextPath() + "/admin/login")).build();
        }
    }
}
