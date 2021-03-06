package com.movilehack.redlight.tatuador;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class TatuadorService {

  private TatuadorRepositorio repositorio;

  public TatuadorService() {
    this.repositorio = new TatuadorRepositorio();
  }

  public Tatuador save(Tatuador tatuador) {
    long id = repositorio.save(tatuador);
    tatuador.setId(id);
    return tatuador;
  }

  public TatuadorStyle saveStyle(TatuadorStyle style) {
    Long id = repositorio.saveStyle(style);
    style.setId(id);
    return style;
  }

  public List<Tatuador> listAll() {
    return repositorio.listAll();
  }

  public Tatuador getById(long id) {
    return repositorio.getById(id);
  }

  public List<Tatuador> listByStyle(String styles) {
    String[] styleArray = styles.split("-");
    List<Tatuador> tatuadores = new ArrayList<>();
    List<Long> tatuadoresIds = new ArrayList<>();
    for (int i = 0; i < styleArray.length; i++) {
      List<TatuadorStyle> tatuadoresStyle = repositorio.listByStyle(styleArray[i]);
      for (int x = 0; x < tatuadoresStyle.size(); x++) {
        if (!tatuadoresIds.contains(tatuadoresStyle.get(x).getTatuador())) {
          tatuadoresIds.add(tatuadoresStyle.get(x).getTatuador());
          tatuadores.add(repositorio.getById(tatuadoresStyle.get(x).getTatuador()));
        }
      }
    }
    return tatuadores;
  }

  public List<Tatuador> listByLocation(String location) {
    return repositorio.listByLocation(location);
  }
}
