package com.movilehack.redlight.tatuador;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

import java.util.List;

@Entity
@Cache
public class Tatuador {

  @Id
  private long id;

  @Index
  private String name;

  private String description;

  private String avatar;

  @Index
  private Style styles;

  private String facebook;
  private String instagram;
  private String pinterest;

  private List<String> highlights;
  private List<String> portifolio;
  private float score;
  private String studio;

  @Index
  private String email;
  private String phone;

  private String location;
}
