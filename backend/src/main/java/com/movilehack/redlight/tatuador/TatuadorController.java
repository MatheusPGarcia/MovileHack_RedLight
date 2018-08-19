package com.movilehack.redlight.tatuador;

import com.google.api.server.spi.config.ApiMethod;
import com.google.api.server.spi.config.Named;
import com.movilehack.redlight.utils.ControllerBase;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class TatuadorController extends ControllerBase {

  private TatuadorService service;

  public TatuadorController() {
    this.service = new TatuadorService();
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.POST,
      name = "tatuador.save",
      path = "tatuador")
  public Tatuador save(Tatuador tatuador) {
    return this.service.save(tatuador);
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.POST,
      name = "tatuador.saveStyle",
      path = "tatuador/{id}/style/{style}")
  public void saveStyle(Long id, String style) {

  }


  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "tatuador.listAll",
      path = "tatuador")
  public List<Tatuador> listAll() {
    return this.service.listAll();
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "tatuador.listByStyle",
      path = "tatuador/style")
  public List<Tatuador> listByStyle(HttpServletRequest request) {
    String queryString = request.getQueryString();
    String styles = queryString.split("=")[1];
    return service.listByStyle(styles);
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "tatuador.listById",
      path = "tatuador/{id}")
  public Tatuador getById(@Named("id") Long id) {
    return this.service.getById(id);
  }

}
