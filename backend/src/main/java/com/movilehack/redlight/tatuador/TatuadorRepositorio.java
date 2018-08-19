package com.movilehack.redlight.tatuador;

import com.googlecode.objectify.ObjectifyService;

import java.util.List;

public class TatuadorRepositorio {

  public TatuadorRepositorio() {
  }

  public long save(Tatuador tatuador) {
    return ObjectifyService.ofy().save().entity(tatuador).now().getId();
  }

  public void saveStyle(TatuadorStyle tatuadorStyle) {
    ObjectifyService.ofy().save().entity(tatuadorStyle).now();
  }

  public List<Tatuador> listAll() {
    return ObjectifyService.ofy().load().type(Tatuador.class).list();
  }

  public Tatuador getById(long id) {
    return ObjectifyService.ofy().load().type(Tatuador.class).id(id).now();
  }

  public List<TatuadorStyle> listByStyle(String style) {
    return ObjectifyService.ofy().load().type(TatuadorStyle.class).filter("style", style).list();
  }

  public List<Tatuador> listByLocation(String location) {
    return ObjectifyService.ofy().load().type(Tatuador.class).filter("location", location).list();
  }
}
