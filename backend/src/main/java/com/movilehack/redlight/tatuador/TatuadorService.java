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

  public void saveStyle(Long id, String style) {
    TatuadorStyle tatuadorStyle = new TatuadorStyle(id, style);
    repositorio.saveStyle(tatuadorStyle);
  }

  public List<Tatuador> listAll() {
    return repositorio.listAll();
  }

  public Tatuador getById(long id) {
    return repositorio.getById(id);
  }

  public List<Tatuador> listByStyle(String styles) {
    String[] styleArray = styles.split(",");
    List<Tatuador> tatuadores = new ArrayList<>();
    for (int i = 0; i < styleArray.length; i++) {
      List<TatuadorStyle> tatuadoresStyle = repositorio.listByStyle(styleArray[i]);
      List<Long> tatuadoresIds = new ArrayList<>();
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
