package com.azoza.web.zuki.controller.admin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.net.URI;

@Path("/admin")
public class DashboardController {

//    @GET
//    public Viewable index(){
//        return new Viewable("/backend/dashboard");
//    }

    @GET
    public Response index(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loggedIn") != null) {
            return Response.ok(new Viewable("/backend/dashboard")).build();
        } else {
            return Response.seeOther(URI.create(request.getContextPath() + "/admin/login")).build();
        }
    }

    @POST
    @Path("/setSession")
    public String setSession(@Context HttpServletRequest request) {
        try {
            HttpSession session = request.getSession(true);
            int maxInactiveInterval = 30 * 60; // 30 minutes in seconds
            session.setMaxInactiveInterval(maxInactiveInterval);
            session.setAttribute("loggedIn", true);
            return "session-set";
        } catch (Exception e) {
            e.printStackTrace();
            return "session-error";
        }
    }

    @GET
    @Path("/logout")
    public Response logout(@Context HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate the session
            session.invalidate();
        }

        // Redirect to the login page after logout
        return Response.seeOther(URI.create(request.getContextPath() + "/admin/login")).build();
    }
}
