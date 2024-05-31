package com.azoza.web.zuki.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/menu")
public class MenuController {
    @GET
    public Viewable index(){

        return new Viewable("/frontend/menu");
    }
}