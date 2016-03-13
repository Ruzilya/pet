package ru.kpfu.itis.pet.g2048.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.pet.g2048.dao.UserDao;
import ru.kpfu.itis.pet.g2048.model.User;
import ru.kpfu.itis.pet.g2048.service.UserService;

import java.util.List;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    public void setPersonDAO(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public List<User> users() {
        return this.userDao.findAll();
    }

}
