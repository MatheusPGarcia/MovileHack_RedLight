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
  private Long id;

  @Index
  private String name;

  private String description;

  private String avatar;

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

  public Tatuador() {
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getAvatar() {
    return avatar;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }

  public String getFacebook() {
    return facebook;
  }

  public void setFacebook(String facebook) {
    this.facebook = facebook;
  }

  public String getInstagram() {
    return instagram;
  }

  public void setInstagram(String instagram) {
    this.instagram = instagram;
  }

  public String getPinterest() {
    return pinterest;
  }

  public void setPinterest(String pinterest) {
    this.pinterest = pinterest;
  }

  public List<String> getHighlights() {
    return highlights;
  }

  public void setHighlights(List<String> highlights) {
    this.highlights = highlights;
  }

  public List<String> getPortifolio() {
    return portifolio;
  }

  public void setPortifolio(List<String> portifolio) {
    this.portifolio = portifolio;
  }

  public float getScore() {
    return score;
  }

  public void setScore(float score) {
    this.score = score;
  }

  public String getStudio() {
    return studio;
  }

  public void setStudio(String studio) {
    this.studio = studio;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

}
