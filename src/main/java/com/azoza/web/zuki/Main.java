package com.azoza.web.zuki;

import com.azoza.web.zuki.listener.ContextListener;
import org.apache.catalina.Context;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.WebResourceRoot;
import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.webresources.DirResourceSet;
import org.apache.catalina.webresources.StandardRoot;

import java.io.File;

public class Main {
    public static void main(String[] args) {
        Tomcat tomcat = new Tomcat();
        tomcat.setPort(8080);
        tomcat.getConnector();

        Context context =  tomcat.addWebapp("/zuki", new File("./src/main/webapp").getAbsolutePath());
        context.setAllowCasualMultipartParsing(true);
        context.addApplicationListener(ContextListener.class.getName());

//        WebResourceRoot root = new StandardRoot(context);
//        String path = new File("./target/classes").getAbsolutePath();
//        root.addPreResources(new DirResourceSet(root,"/WEB-INF/classes",path,"/"));
//        context.setResources(root);

        try{
            tomcat.start();
            tomcat.getServer().await();
        }catch(LifecycleException ex){
            throw new RuntimeException();
        }


    }
}

