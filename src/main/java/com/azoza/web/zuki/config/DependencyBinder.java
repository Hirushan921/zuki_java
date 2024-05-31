package com.azoza.web.zuki.config;

import com.azoza.web.zuki.util.Encryption;
import com.azoza.web.zuki.util.JwtTokenUtil;
import jakarta.inject.Singleton;
import org.glassfish.hk2.utilities.binding.AbstractBinder;

public class DependencyBinder extends AbstractBinder {
    @Override
    protected void configure() {
        System.out.println("Dependency Binder...");
        bind(Encryption.class).to(Encryption.class).in(Singleton.class);
        bind(JwtTokenUtil.class).to(JwtTokenUtil.class).in(Singleton.class);
    }
}
