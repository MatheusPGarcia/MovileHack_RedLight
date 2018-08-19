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
  private long id;

  @Index
  private String name;

  private String email;
  private String password;
  private String phone;
  private String facebookId;

  private List<Long> savedProfiles;
  private List<Long> messages;

  public String getName(){
    return name;
  }

  public String getEmail(){
    return email;
  }

  public String getPhone(){
    return phone;
  }

  public String getFacebookId(){
    return facebookId;
  }

  public List<Long> getSavedProfiles(){
    return savedProfiles;
  }
  
  public List<Long> getMessages(){
    return messages;
  }

  public void setName(name){
    this.name = name;
  }

  public void setEmail(email){
    this.email = email;
  }

  public void getPhone(phone){
    this.phone = phone;
  }

  public void facebook(facebookId){
    this.facebookId= facebookId;
  }

  public void addSavedProfiles(profileId){
    savedProfiles.push(profileId);
  }

  public void addMessages(messageId){
    messages.push(messageId);
  }
}
