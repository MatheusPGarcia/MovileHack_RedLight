package com.movilehack.redlight.user;

import com.google.api.server.spi.config.ApiMethod;
import com.google.api.server.spi.config.Named;
import com.movilehack.redlight.utils.ControllerBase;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class UserController extends ControllerBase {

  private UserService service;

  public UserController() {
    this.service = new UserService();
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.POST,
      name = "user.save",
      path = "user")
  public User save(User user) {
    return this.service.save(user);
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "user.listById",
      path = "user/{id}")
  public User getById(@Named("id") Long id) {
    return this.service.getById(id);
  }

  @ApiMethod( httpMethod = ApiMethod.HttpMethod.GET,
      name = "user.listByEmail",
      path = "user/email/{email}")
  public User getByEmail(@Named("email") String email) {
    return this.service.getByEmail(email);
  }

}
