package com.movilehack.redlight.user;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

import java.util.List;

@Entity
@Cache
public class User {

  @Id
  private Long id;

  @Index
  private String name;

  @Index
  private String email;
  // MD5 Hash
  private String password;
  private String phone;
  private String facebookId;
  private String address;

  private List<Long> savedProfiles;
  private List<Long> messages;


  public User() {
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getFacebookId() {
    return facebookId;
  }

  public void setFacebookId(String facebookId) {
    this.facebookId = facebookId;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public List<Long> getSavedProfiles() {
    return savedProfiles;
  }

  public void setSavedProfiles(List<Long> savedProfiles) {
    this.savedProfiles = savedProfiles;
  }

  public List<Long> getMessages() {
    return messages;
  }

  public void setMessages(List<Long> messages) {
    this.messages = messages;
  }
}
