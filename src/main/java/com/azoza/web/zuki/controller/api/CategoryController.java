package com.azoza.web.zuki.controller.api;

import com.azoza.web.zuki.annotation.ApiSecure;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;


@ApiSecure
@Path("/api/v1/category")
public class CategoryController {
    @GET
    public Response get(){
        return Response.ok().entity("Test").build();
    }
}
