package com.movilehack.redlight.consumidor;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
@Cache
public class Consumidor {

  @Id
  private long id;
  private String name;
  private String email;
}
