package com.movilehack.redlight.user;

import com.movilehack.redlight.user.model.User;

import java.util.List;

public class UserService {

    private UserRepository userRepository;

    public UserService() {
        this.userRepository = new UserRepository();
    }

    public void save(com.google.api.server.spi.auth.common.User gUser) {
        User user = new User(gUser.getEmail());
        if (getByEmail(user.getEmail()) == null) {
            userRepository.save(user);
        }
    }

    public void delete(String email) {
        userRepository.delete(email);
    }

    public List<User> listAll() {
        return userRepository.listAll();
    }

    public User getByEmail (String email) {
        return userRepository.getByEmail(email);
    }
}
