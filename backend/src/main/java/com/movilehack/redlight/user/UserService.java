package com.movilehack.redlight.user;

import java.util.List;

public class UserService {

    private UserRepository userRepository;

    public UserService() {
        this.userRepository = new UserRepository();
    }

    public void save(User user) {
        userRepository.save(user);
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
