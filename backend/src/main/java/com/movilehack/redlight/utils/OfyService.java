package com.movilehack.redlight.utils;

import com.googlecode.objectify.ObjectifyService;
import com.movilehack.redlight.tatuador.Tatuador;
import com.movilehack.redlight.tatuador.TatuadorStyle;
import com.movilehack.redlight.user.User;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class OfyService implements ServletContextListener {
  @Override
  public void contextInitialized(ServletContextEvent event) {
    ObjectifyService.init();
    ObjectifyService.register(User.class);
    ObjectifyService.register(Tatuador.class);
    ObjectifyService.register(TatuadorStyle.class);
  }

  @Override
  public void contextDestroyed(ServletContextEvent sce) {

  }
}