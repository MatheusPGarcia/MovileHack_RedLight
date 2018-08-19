package com.movilehack.redlight.user;

import com.google.api.server.spi.config.ApiMethod;
import com.google.api.server.spi.config.Named;
import com.movilehack.redlight.utils.ControllerBase;


public class UserController extends ControllerBase {

  private UserService service;

  public UserController() {
    this.service = new UserService();
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.POST,
      name = "user.save",
      path = "user")
  public void save(User user) {
    this.service.save(user);
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "user.listByEmail",
      path = "user/email/{email}")
  public User getByEmail(@Named("email") String email) {
    return this.service.getByEmail(email);
  }

}
