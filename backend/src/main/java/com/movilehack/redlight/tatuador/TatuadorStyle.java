package com.movilehack.redlight.tatuador;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
@Cache
public class TatuadorStyle {

  @Id
  private Long id;
  private long tatuador;
  @Index
  private String style;

  public TatuadorStyle() {
  }

  public TatuadorStyle(long tatuador, String style) {
    this.tatuador = tatuador;
    this.style = style;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public long getTatuador() {
    return tatuador;
  }

  public void setTatuador(long tatuador) {
    this.tatuador = tatuador;
  }

  public String getStyle() {
    return style;
  }

  public void setStyle(String style) {
    this.style = style;
  }
}
