package ru.kpfu.itis.pet.g2048.service;

import ru.kpfu.itis.pet.g2048.model.User;

import java.util.List;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
public interface UserService {
    public List<User> users();
    void save(User user);
    User findByUsername(String username);
}
