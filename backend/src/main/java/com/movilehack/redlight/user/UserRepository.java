package com.movilehack.redlight.user;

import com.googlecode.objectify.ObjectifyService;
import com.movilehack.redlight.user.model.User;

import java.util.List;

public class UserRepository {

    public String save(User user) {
        return ObjectifyService.ofy().save().entity(user).now().getName();
    }

    public void delete(String email) {
        ObjectifyService.ofy().delete().type(User.class).id(email).now();
    }

    public List<User> listAll() {
        return ObjectifyService.ofy().load().type(User.class).list();
    }

    public User getByEmail (String email) {
        return ObjectifyService.ofy().load().type(User.class).filter("email", email).first().now();
    }

    public User getById (long userId) {
        return ObjectifyService.ofy().load().type(User.class).id(userId).now();
    }
}
